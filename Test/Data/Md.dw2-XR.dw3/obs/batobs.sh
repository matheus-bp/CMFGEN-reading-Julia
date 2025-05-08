#!/bin/csh

#setenv ATOMIC        /data/ATOMIC/atomic_18dec05
#setenv PROG_CMF_OBS   /home/jcbouret/CMFGEN/18mar07/exe/cmf_flux.exe

setenv ATOMIC        ~/cmfgen/05may17/atomic
#setenv EXE          ~/cmfgen/05may17/cur_cmf/exe/
setenv EXE          ~/cmfgen/06feb20/cur_cmf/exe/
setenv PROG_CMF_OBS   $EXE/cmf_flux.exe

# ***********************************************************************
# Perform soft links so Atomic data files can be accessed.
# ***********************************************************************

../batch.sh assign


ln -sf $ATOMIC/misc/strk_list_lemke_3jan01.dat   FULL_STRK_LIST
ln -sf $ATOMIC/misc/lemke_hi.dat                 LEMKE_HI
ln -sf $ATOMIC/misc/hei_ir_strk.dat              HeI_IR_STRK
ln -sf $ATOMIC/misc/ds_strk.dat                  DS_STRK
ln -sf $ATOMIC/misc/bs_hhe.dat                   BS_HHE

# ***********************************************************************
# Copy file across with main settings.
# ***********************************************************************

cp -f CMF_FLUX_PARAM_INIT CMF_FLUX_PARAM


# ***********************************************************************

# Start the job, fist getting the machine name.
# We first do a full spectrum calculations

rm -f batobs.log
rm -f error.log

echo "Machine name is :" > 'batobs.log'
uname -a >> 'batobs.log'

echo " " >> 'batobs.log'
echo "Program started on:" >> 'batobs.log'
date >> 'batobs.log'
echo " " >> 'batobs.log'
#
$PROG_CMF_OBS  >>& 'batobs.log'  << END  
../RVTJ         [RVTJ]
23              [MASS]
F               [ONLY_OBS_LINES]
END

#
echo "Program finished on:" >> 'batobs.log'
date >> 'batobs.log'

# Clean up the directory structure, removing all
#uneccessary files.
#
mv -f OBSFRAME     obs_fin
mv -f HYDRO        hydro_fin
mv -f MEANOPAC     meanopac_fin
mv -f TIMING       full_timing
#
#rmlinks
rm -f EDDFACTOR
rm -f ES_J_CONV
rm -f TRANS_INFO
rm -f J_COMP
rm -f fort.*

# Now we will compute the continuum. We first need to edit the CMF
# param file.
#
rm -f CMF_FLUX_PARAM
#
sed -e "s/2            \[NUM_ES\]/1            \[NUM_ES\]/g" \
    -e "s/F            \[DO_SOB_LINES\]/F            \[DO_SOB_LINES\]/g" \
    -e "s/BLANK        \[GLOBAL_LINE\]/SOB          \[GLOBAL_LINE\]/g" \
    -e "s/T            \[WR_CMF_FORCE\]/F            \[WR_CMF_FORCE\]/g" \
    -e "s/F            \[WR_SOB_FORCE\]/F            \[WR_SOB_FORCE\]/g" \
    -e "s/T            \[WR_FLUX\]/F            \[WR_FLUX\]/g" \
CMF_FLUX_PARAM_INIT >  CMF_FLUX_PARAM 
#
# Start the job.
#
echo " " >> 'batobs.log'
echo " " >> 'batobs.log'
echo "Continuum calculation started on:" >> 'batobs.log'
date >> 'batobs.log'
echo " " >> 'batobs.log'
#
$PROG_CMF_OBS  >>& 'batobs.log'  << END  
../RVTJ         [RVTJ]
23              [MASS]
F               [ONLY_OBS_LINES]
END
#
echo "Program finished on:" >> 'batobs.log'
date >> 'batobs.log'
#
# Clean up the directory structure, removing all
#uneccessary files.
#
mv -f OBSFRAME     obs_cont
mv -f TIMING       cont_timing
mv -f EWDATA       ewdata_fin
mv -f HYDRO        hydro_cont
#

rmlinks
rm -f EDDFACTOR
rm -f ES_J_CONV
rm -f EDDFACTOR_INFO
rm -f ES_J_CONV_INFO
rm -f TRANS_INFO
rm -f J_COMP
rm -f MEANOPAC
#rm -f HYDRO
#rm -f fort.*
#
