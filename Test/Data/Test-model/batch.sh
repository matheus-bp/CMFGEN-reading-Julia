#!/bin/csh
#
#**********************************************************************
#   Define directories (CAPITAL LETTERS)
#**********************************************************************
limit stacksize unlimited

# HOME is disk
# ATOMIC is atomic data directory

setenv ATOMIC ~/cmfgen/05may17/atomic
setenv atomic ~/cmfgen/05may17/atomic
setenv CMFGEN_PROG ~/cmfgen/06feb20/cur_cmf/exe/cmfgen_dev.exe

#***********************************************************************
#    Atomic data soft links. All other shell commands should be
#    place after these links. These links are model dependent. Ther
#    are required by CMFGEN, CMF_FLUX, and DISPGEN
#
#    When N_F=N_S, no F_TO_S link is needed.
#***********************************************************************

#*****************************************************************************
# Generic
# -------
#*****************************************************************************
 ln -sf  $ATOMIC/misc/two_phot_data.dat                    TWO_PHOT_DATA
 ln -sf  $ATOMIC/misc/xray_phot_fits.dat                   XRAY_PHOT_FITS
 ln -sf  $ATOMIC/misc/gal_xray_hr.dat                      RS_XRAY_FLUXES
 ln -sf  $ATOMIC/HYD/I/5dec96/hyd_l_data.dat               HYD_L_DATA
 ln -sf  $ATOMIC/HYD/I/5dec96/gbf_n_data.dat               GBF_N_DATA

#*****************************************************************************
#    Hydrogen
#   ----------
#*****************************************************************************
 ln -sf  $ATOMIC/HYD/I/5dec96/hiphot.dat                   PHOTHI_A
 ln -sf  $ATOMIC/HYD/I/5dec96/hi_osc.dat                   HI_F_OSCDAT
# ln -sf  $ATOMIC/HYD/I/5dec96/hi_f_to_s_15.dat             HI_F_TO_S
 ln -sf  $ATOMIC/HYD/I/5dec96/hicol.tlusty                     HI_COL_DATA

#*****************************************************************************
#    Helium
#   --------
#*****************************************************************************
 ln -sf  $ATOMIC/HE/II/5dec96/he2phot.dat                  PHOTHe2_A
 ln -sf  $ATOMIC/HE/II/5dec96/he2_osc.dat                  He2_F_OSCDAT
# ln -sf  $ATOMIC/HE/II/5dec96/he2_f_to_s_22.dat            He2_F_TO_S
 ln -sf  $ATOMIC/HE/II/5dec96/he2col.dat                    He2_COL_DATA
#
 ln -sf  $ATOMIC/HE/I/5dec96/heiphot_a7.dat                PHOTHeI_A
 ln -sf  $ATOMIC/HE/I/5dec96/heioscdat_a7.dat              HeI_F_OSCDAT
# ln -sf  $ATOMIC/HE/I/5dec96/hei_f_to_s_a7.dat            HeI_F_TO_S
 ln -sf  $ATOMIC/HE/I/5dec96/heicol.dat                     HeI_COL_DATA


#*****************************************************************************
#    Carbon
#   --------
#*****************************************************************************
 ln -sf  $ATOMIC/CARB/II/14jul98/c2phot_a.dat               PHOTC2_A
 ln -sf  $ATOMIC/CARB/II/14jul98/c2phot_b.dat               PHOTC2_B
 ln -sf  $ATOMIC/CARB/II/14jul98/c2osc_opac_split.dat       C2_F_OSCDAT
 ln -sf  $ATOMIC/CARB/II/14jul98/c2_f_to_s_split.dat        C2_F_TO_S
 ln -sf  $ATOMIC/CARB/II/14jul98/c2col.dat                   C2_COL_DATA
 ln -sf  $ATOMIC/CARB/II/14jul98/c2doubdie.dat              DIEC2
#
 ln -sf  $ATOMIC/CARB/III/23dec04/ciiiphot_sm_a.dat          PHOTCIII_A
 ln -sf  $ATOMIC/CARB/III/23dec04/ciiiphot_sm_b.dat          PHOTCIII_B
 ln -sf  $ATOMIC/CARB/III/23dec04/ciiiosc_st_split_big.dat   CIII_F_OSCDAT
 ln -sf  $ATOMIC/CARB/III/23dec04/ciii_f_to_s_split_big.dat  CIII_F_TO_S
 ln -sf  $ATOMIC/CARB/III/23dec04/ciiicol.dat                 CIII_COL_DATA
 ln -sf  $ATOMIC/CARB/III/23dec04/dieciii_ic.dat              DIECIII
#
 ln -sf  $ATOMIC/CARB/IV/5dec96/civphot_a12.dat            PHOTCIV_A
 ln -sf  $ATOMIC/CARB/IV/5dec96/civosc_a12_split.dat       CIV_F_OSCDAT
 ln -sf  $ATOMIC/CARB/IV/5dec96/civ_f_to_s_split.dat       CIV_F_TO_S
 ln -sf  $ATOMIC/CARB/IV/5dec96/civcol.dat                  CIV_COL_DATA


#*****************************************************************************
#    Nitrogen
#   ----------
#*****************************************************************************
# ln -sf  $ATOMIC/NIT/II/29jul98/n2osc_split.dat            N2_F_OSCDAT
# ln -sf  $ATOMIC/NIT/II/29jul98/n2phot_a.dat               PHOTN2_A
# ln -sf  $ATOMIC/NIT/II/29jul98/n2phot_b.dat               PHOTN2_B
# ln -sf  $ATOMIC/NIT/II/29jul98/n2phot_c.dat               PHOTN2_C
# ln -sf  $ATOMIC/NIT/II/29jul98/n2die.dat                  DIEN2
# ln -sf  $ATOMIC/NIT/II/29jul98/n2col.dat                   N2_COL_DATA
# ln -sf  $ATOMIC/NIT/II/29jul98/n2_f_to_s.84_41            N2_F_TO_S
#
 ln -sf  $ATOMIC/NIT/I/12sep12/niphot_a.dat                PHOTNI_A
 ln -sf  $ATOMIC/NIT/I/12sep12/niphot_b.dat                PHOTNI_B
 ln -sf  $ATOMIC/NIT/I/12sep12/niphot_c.dat                PHOTNI_C
 ln -sf  $ATOMIC/NIT/I/12sep12/niphot_d.dat                PHOTNI_D
 ln -sf  $ATOMIC/NIT/I/12sep12/ni_osc                      NI_F_OSCDAT
 ln -sf  $ATOMIC/NIT/I/12sep12/ni_col                      NI_COL_DATA
 ln -sf  $ATOMIC/NIT/I/12sep12/f_to_s_term.dat             NI_F_TO_S
#
 ln -sf  $ATOMIC/NIT/II/23jan06/phot_sm_3000               PHOTN2_A
 ln -sf  $ATOMIC/NIT/II/23jan06/phot_sm_B                  PHOTN2_B
 ln -sf  $ATOMIC/NIT/II/23jan06/fin_osc                    N2_F_OSCDAT
 ln -sf  $ATOMIC/NIT/II/23jan06/n2col.dat                  N2_COL_DATA
 ln -sf  $ATOMIC/NIT/II/23jan06/f_to_s_ls                  N2_F_TO_S
#
 ln -sf  $ATOMIC/NIT/III/19mar06/phot_sm_0.dat              PHOTNIII_A
 ln -sf  $ATOMIC/NIT/III/19mar06/niiiosc_rev.dat           NIII_F_OSCDAT
 ln -sf  $ATOMIC/NIT/III/19mar06/f_to_s_57.dat             NIII_F_TO_S
 ln -sf  $ATOMIC/NIT/III/19mar06/niiicol.dat                NIII_COL_DATA
# ln -sf  $ATOMIC/NIT/III/19mar06/niiiauto                   DIENIII
#
 ln -sf  $ATOMIC/NIT/IV/5dec96/nivphot_a.dat               PHOTNIV_A
 ln -sf  $ATOMIC/NIT/IV/5dec96/nivphot_b.dat               PHOTNIV_B
 ln -sf  $ATOMIC/NIT/IV/5dec96/nivosc_ns_split.dat         NIV_F_OSCDAT
 ln -sf  $ATOMIC/NIT/IV/5dec96/niv_f_to_s_split.dat        NIV_F_TO_S
 ln -sf  $ATOMIC/NIT/IV/5dec96/nivcol.dat                   NIV_COL_DATA
 ln -sf  $ATOMIC/NIT/IV/5dec96/nivdie.dat                  DIENIV
#
 ln -sf  $ATOMIC/NIT/V/5dec96/nvphot_a12.dat               PHOTNV_A
 ln -sf  $ATOMIC/NIT/V/5dec96/nvosc_a12_split.dat          NV_F_OSCDAT
 ln -sf  $ATOMIC/NIT/V/5dec96/nv_f_to_s_split_sm.dat       NV_F_TO_S
 ln -sf  $ATOMIC/NIT/V/5dec96/nvcol.dat                     NV_COL_DATA


#*****************************************************************************
#    Oxygen
#   --------
#*****************************************************************************
# ln -sf  $ATOMIC/OXY/II/23mar05/phot_sm_3000.dat            PHOTO2_A
# ln -sf  $ATOMIC/OXY/II/23mar05/o2osc_fin.dat               O2_F_OSCDAT
# ln -sf  $ATOMIC/OXY/II/23mar05/f_to_s_ls.dat              O2_F_TO_S
# ln -sf  $ATOMIC/OXY/II/23mar05/o2col.dat                    O2_COL_DATA
#
 ln -sf  $ATOMIC/OXY/I/20sep11/phot_nosm_A             PHOTOI_A
 ln -sf  $ATOMIC/OXY/I/20sep11/phot_nosm_B             PHOTOI_B
 ln -sf  $ATOMIC/OXY/I/20sep11/oi_osc_mchf             OI_F_OSCDAT
 ln -sf  $ATOMIC/OXY/I/20sep11/f_to_s_58               OI_F_TO_S
 ln -sf  $ATOMIC/OXY/I/20sep11/oi_col                      OI_COL_DATA


# ln -sf  $ATOMIC/OXY/II/3oct00/phot_sm_3000.dat            PHOTO2_A
# ln -sf  $ATOMIC/OXY/II/3oct00/o2osc_fin.dat               O2_F_OSCDAT
# ln -sf  $ATOMIC/OXY/II/3oct00/f_to_s_53.dat               O2_F_TO_S
# ln -sf  $ATOMIC/OXY/II/3oct00/o2col.dat                   O2_COL_DATA

 ln -sf  $ATOMIC/OXY/II/23mar05/phot_sm_3000.dat            PHOTO2_A
 ln -sf  $ATOMIC/OXY/II/23mar05/o2osc_fin.dat               O2_F_OSCDAT
 ln -sf  $ATOMIC/OXY/II/23mar05/f_to_s_137.dat              O2_F_TO_S
 ln -sf  $ATOMIC/OXY/II/23mar05/o2col.dat                    O2_COL_DATA

 ln -sf  $ATOMIC/OXY/III/20jun01/phot_sm_3000.dat          PHOTOIII_A
 ln -sf  $ATOMIC/OXY/III/20jun01/oiiiosc_rev.dat           OIII_F_OSCDAT
 ln -sf  $ATOMIC/OXY/III/20jun01/f_to_s_57.dat            OIII_F_TO_S
 ln -sf  $ATOMIC/OXY/III/20jun01/col_data.dat              OIII_COL_DATA
#
 ln -sf  $ATOMIC/OXY/IV/28dec02/phot_sm_3000_A               PHOTOIV_A
 ln -sf  $ATOMIC/OXY/IV/28dec02/phot_sm_3000_B               PHOTOIV_B
 ln -sf  $ATOMIC/OXY/IV/28dec02/fin_osc                     OIV_F_OSCDAT
 ln -sf  $ATOMIC/OXY/IV/28dec02/f_to_s_ls_242               OIV_F_TO_S
 ln -sf  $ATOMIC/OXY/IV/28dec02/oivcol.dat                   OIV_COL_DATA
#
 ln -sf  $ATOMIC/OXY/V/5dec96/ovphot_a.dat                 PHOTOV_A
 ln -sf  $ATOMIC/OXY/V/5dec96/ovphot_b.dat                 PHOTOV_B
 ln -sf  $ATOMIC/OXY/V/5dec96/ovosc_ns_split.dat           OV_F_OSCDAT
 ln -sf  $ATOMIC/OXY/V/5dec96/ov_f_to_s_split_ext.dat      OV_F_TO_S
 ln -sf  $ATOMIC/OXY/V/5dec96/ovcol.dat                     OV_COL_DATA
 ln -sf  $ATOMIC/OXY/V/5dec96/ovdie.dat                    DIEOV

#*****************************************************************************
# Neon
# ----
#*****************************************************************************
 ln -sf  $ATOMIC/NEON/II/1dec99/phot_sm_3000.dat           PHOTNe2_A
 ln -sf  $ATOMIC/NEON/II/1dec99/fin_osc.dat                Ne2_F_OSCDAT
 ln -sf  $ATOMIC/NEON/II/1dec99/f_to_s_42.dat              Ne2_F_TO_S
 ln -sf  $ATOMIC/NEON/II/1dec99/col_data.dat               Ne2_COL_DATA
#
 ln -sf  $ATOMIC/NEON/III/1dec99/phot_sm_3000.dat          PHOTNeIII_A
 ln -sf  $ATOMIC/NEON/III/1dec99/fin_osc.dat               NeIII_F_OSCDAT
 ln -sf  $ATOMIC/NEON/III/1dec99/f_to_s_40.dat             NeIII_F_TO_S
 ln -sf  $ATOMIC/NEON/III/1dec99/col_data.dat              NeIII_COL_DATA
#
 ln -sf  $ATOMIC/NEON/IV/1dec99/phot_sm_3000.dat           PHOTNeIV_A
 ln -sf  $ATOMIC/NEON/IV/1dec99/fin_osc.dat                NeIV_F_OSCDAT
 ln -sf  $ATOMIC/NEON/IV/1dec99/f_to_s_45.dat              NeIV_F_TO_S
 ln -sf  $ATOMIC/NEON/IV/1dec99/col_data.dat               NeIV_COL_DATA
#
 ln -sf  $ATOMIC/NEON/V/20jun01/phot_sm_3000.dat           PHOTNeV_A
 ln -sf  $ATOMIC/NEON/V/20jun01/nevosc_rev.dat             NeV_F_OSCDAT
 ln -sf  $ATOMIC/NEON/V/20jun01/f_to_s_60.dat              NeV_F_TO_S
 ln -sf  $ATOMIC/NEON/V/20jun01/col_data.dat               NeV_COL_DATA

#*****************************************************************************
#    Mg
#   --------
#*****************************************************************************
#
 ln -sf $ATOMIC/MG/II/5aug97/mg2_osc_split.dat      Mg2_F_OSCDAT
 ln -sf $ATOMIC/MG/II/5aug97/mg2_f_to_s_sm.dat      Mg2_F_TO_S
 ln -sf $ATOMIC/MG/II/5aug97/mg2_phot_a.dat         PHOTMg2_A
 ln -sf $ATOMIC/MG/II/5aug97/mg2col.dat             Mg2_COL_DATA
 ln -sf  $ATOMIC/MG/III/20jun01/phot_sm_3000.dat          PHOTMgIII_A
 ln -sf  $ATOMIC/MG/III/20jun01/mgiiiosc_rev.dat          MgIII_F_OSCDAT
 ln -sf  $ATOMIC/MG/III/20jun01/f_to_s_29.dat             MgIII_F_TO_S
 ln -sf  $ATOMIC/MG/III/20jun01/col_guess.dat             MgIII_COL_DATA






#*****************************************************************************
#   Aluminium
#   --------
#*****************************************************************************
#
#

ln -sf $ATOMIC/AL/II/5aug97/al2_osc_split.dat    Al2_F_OSCDAT
ln -sf $ATOMIC/AL/II/5aug97/al2_phot_a.dat       PHOTAl2_A
ln -sf $ATOMIC/AL/II/5aug97/al2col.dat           Al2_COL_DATA
ln -sf $ATOMIC/AL/II/5aug97/al2_f_to_s_sm.dat    Al2_F_TO_S
ln -sf $ATOMIC/AL/III/5aug97/aliii_osc_split.dat     AlIII_F_OSCDAT
ln -sf $ATOMIC/AL/III/5aug97/aliii_phot_a.dat        PHOTAlIII_A
ln -sf $ATOMIC/AL/III/5aug97/col_guess.dat           AlIII_COL_DATA
ln -sf $ATOMIC/AL/III/5aug97/aliii_f_to_s_sm.dat     AlIII_F_TO_S




#*****************************************************************************
#    Silicon
#   --------
#*****************************************************************************
#
 ln -sf $ATOMIC/SIL/II/2oct97/phot_op.dat                  PHOTSk2_A
 ln -sf $ATOMIC/SIL/II/2oct97/si2osc_split.dat             Sk2_F_OSCDAT
 ln -sf $ATOMIC/SIL/II/2oct97/f_to_s_ls.dat                Sk2_F_TO_S
 ln -sf $ATOMIC/SIL/II/2oct97/col_si2.dat                  Sk2_COL_DATA
#
#ln -sf  $ATOMIC/SIL/II/5aug97/phot_op.dat                 PHOTSk2_A
#ln -sf  $ATOMIC/SIL/II/5aug97/osc_op.dat                  Sk2_F_OSCDAT
#ln -sf  $ATOMIC/SIL/II/5aug97/f_to_s.sp                   Sk2_F_TO_S
#ln -sf  $ATOMIC/SIL/II/5aug97/col_guess.dat               Sk2_COL_DATA
#
#
#

 ln -sf  $ATOMIC/SIL/III/5dec96b/phot_op.dat                  PHOTSkIII_A
 ln -sf  $ATOMIC/SIL/III/5dec96b/osc_op_split_rev.dat_1jun12  SkIII_F_OSCDAT
 ln -sf  $ATOMIC/SIL/III/5dec96b/f_to_s_ls                    SkIII_F_TO_S
 ln -sf  $ATOMIC/SIL/III/5dec96b/col_guess.dat                SkIII_COL_DATA


#
 ln -sf  $ATOMIC/SIL/IV/5dec96/phot_op.dat                 PHOTSkIV_A
 ln -sf  $ATOMIC/SIL/IV/5dec96/osc_op_split.dat_fabrice    SkIV_F_OSCDAT
 ln -sf  $ATOMIC/SIL/IV/5dec96/f_to_s_split_3p.dat         SkIV_F_TO_S
 ln -sf  $ATOMIC/SIL/IV/5dec96/col_guess.dat               SkIV_COL_DATA


#*****************************************************************************
#   Sulpher
#   -------
#*****************************************************************************

 ln -sf $ATOMIC/SUL/III/3oct00/siiiosc_fin.dat            SIII_F_OSCDAT
 ln -sf $ATOMIC/SUL/III/3oct00/phot_sm_3000.dat           PHOTSIII_A
 ln -sf $ATOMIC/SUL/III/3oct00/col_siii.dat               SIII_COL_DATA
 ln -sf $ATOMIC/SUL/III/3oct00/f_to_s_127.dat             SIII_F_TO_S
 ln -sf $ATOMIC/SUL/IV/3oct00/sivosc_fin.dat   SIV_F_OSCDAT
 ln -sf $ATOMIC/SUL/IV/3oct00/phot_sm_3000.dat PHOTSIV_A
 ln -sf $ATOMIC/SUL/IV/3oct00/col_siv.dat      SIV_COL_DATA
 ln -sf $ATOMIC/SUL/IV/3oct00/f_to_s_69.dat    SIV_F_TO_S
 ln -sf $ATOMIC/SUL/V/3oct00/svosc_fin.dat   SV_F_OSCDAT
 ln -sf $ATOMIC/SUL/V/3oct00/phot_sm_500.dat PHOTSV_A
 ln -sf $ATOMIC/SUL/V/3oct00/col_sv.dat      SV_COL_DATA
 ln -sf $ATOMIC/SUL/V/3oct00/f_to_s_78.dat    SV_F_TO_S
 ln -sf  $ATOMIC/SUL/VI/3oct00/phot_sm_3000.dat           PHOTSSIX_A
 ln -sf  $ATOMIC/SUL/VI/3oct00/sviosc_fin.dat             SSIX_F_OSCDAT
 ln -sf  $ATOMIC/SUL/VI/3oct00/f_to_s_33.dat              SSIX_F_TO_S
 ln -sf  $ATOMIC/SUL/VI/3oct00/col_guess.dat               SSIX_COL_DATA


#*****************************************************************************
# Argon
# -----
#*****************************************************************************
#
 ln -sf  $ATOMIC/ARG/III/1dec99/phot_sm_3000.dat           PHOTArIII_A
 ln -sf  $ATOMIC/ARG/III/1dec99/fin_osc.dat                ArIII_F_OSCDAT
 ln -sf  $ATOMIC/ARG/III/1dec99/f_to_s_32.dat              ArIII_F_TO_S
 ln -sf  $ATOMIC/ARG/III/1dec99/col_data.dat               ArIII_COL_DATA
#
 ln -sf  $ATOMIC/ARG/IV/1dec99/phot_sm_3000.dat            PHOTArIV_A
 ln -sf  $ATOMIC/ARG/IV/1dec99/fin_osc.dat                 ArIV_F_OSCDAT
 ln -sf  $ATOMIC/ARG/IV/1dec99/f_to_s_50.dat               ArIV_F_TO_S
 ln -sf  $ATOMIC/ARG/IV/1dec99/col_data.dat                ArIV_COL_DATA
#
 ln -sf  $ATOMIC/ARG/V/1dec99/phot_sm_3000.dat             PHOTArV_A
 ln -sf  $ATOMIC/ARG/V/1dec99/fin_osc.dat                  ArV_F_OSCDAT
 ln -sf  $ATOMIC/ARG/V/1dec99/f_to_s_64.dat                ArV_F_TO_S
 ln -sf  $ATOMIC/ARG/V/1dec99/col_data.dat                 ArV_COL_DATA
#
#
# Phosphurus
#

# ln -sf  $ATOMIC/PHOS/III/15feb01/phot_data.dat             PHOTPIII_A
# ln -sf  $ATOMIC/PHOS/III/15feb01/osc_op.dat                PIII_F_OSCDAT
# ln -sf  $ATOMIC/PHOS/III/15feb01/f_to_s_36.dat             PIII_F_TO_S
# ln -sf  $ATOMIC/PHOS/III/15feb01/col_guess.dat             PIII_COL_DATA
 ln -sf  $ATOMIC/PHOS/IV/15feb01/phot_data_a.dat            PHOTPIV_A
 ln -sf  $ATOMIC/PHOS/IV/15feb01/phot_data_b.dat            PHOTPIV_B
 ln -sf  $ATOMIC/PHOS/IV/15feb01/pivosc_rev.dat             PIV_F_OSCDAT
 ln -sf  $ATOMIC/PHOS/IV/15feb01/f_to_s_36.dat              PIV_F_TO_S
 ln -sf  $ATOMIC/PHOS/IV/15feb01/col_guess.dat              PIV_COL_DATA
 ln -sf  $ATOMIC/PHOS/V/15feb01/phot_data.dat               PHOTPV_A
 ln -sf  $ATOMIC/PHOS/V/15feb01/pvosc_rev.dat               PV_F_OSCDAT
 ln -sf  $ATOMIC/PHOS/V/15feb01/f_to_s_16.dat               PV_F_TO_S
 ln -sf  $ATOMIC/PHOS/V/15feb01/col_guess.dat               PV_COL_DATA


#
#
#*****************************************************************************
#Calcium
#-------
#*****************************************************************************
#

 ln -sf  $ATOMIC/CA/III/10apr99/phot_smooth.dat            PHOTCaIII_A
 ln -sf  $ATOMIC/CA/III/10apr99/osc_op_sp.dat              CaIII_F_OSCDAT
 ln -sf  $ATOMIC/CA/III/10apr99/f_to_s.dat                 CaIII_F_TO_S
 ln -sf  $ATOMIC/CA/III/10apr99/col_guess.dat              CaIII_COL_DATA
 ln -sf  $ATOMIC/CA/IV/10apr99/phot_smooth.dat             PHOTCaIV_A
 ln -sf  $ATOMIC/CA/IV/10apr99/osc_op_sp.dat               CaIV_F_OSCDAT
 ln -sf  $ATOMIC/CA/IV/10apr99/f_to_s.dat                  CaIV_F_TO_S
 ln -sf  $ATOMIC/CA/IV/10apr99/col_guess.dat               CaIV_COL_DATA
 ln -sf  $ATOMIC/CA/V/10apr99/phot_smooth.dat              PHOTCaV_A
 ln -sf  $ATOMIC/CA/V/10apr99/osc_op_sp.dat                CaV_F_OSCDAT
 ln -sf  $ATOMIC/CA/V/10apr99/f_to_s.dat                   CaV_F_TO_S
 ln -sf  $ATOMIC/CA/V/10apr99/col_guess.dat                CaV_COL_DATA

#
#*****************************************************************************
#    Iron
#   ------
#*****************************************************************************
#*****************************************************************************
 ln -sf  $ATOMIC/FE/II/24may96/phot_op.dat                 PHOTFe2_A
 ln -sf  $ATOMIC/FE/II/24may96/osc_nahar.dat               Fe2_F_OSCDAT
 ln -sf  $ATOMIC/FE/II/24may96/f_to_s.827_to_62            Fe2_F_TO_S
 ln -sf  $ATOMIC/FE/II/24may96/col_guess.dat               Fe2_COL_DATA  
#
 ln -sf  $ATOMIC/FE/III/3oct98/phot_smooth.dat             PHOTFeIII_A
 ln -sf  $ATOMIC/FE/III/3oct98/osc_split.dat               FeIII_F_OSCDAT
 ln -sf  $ATOMIC/FE/III/3oct98/f_to_s.607_65               FeIII_F_TO_S
 ln -sf  $ATOMIC/FE/III/3oct98/col_guess.dat                FeIII_COL_DATA
#
 ln -sf  $ATOMIC/FE/IV/18oct00/phot_sm_3000.dat            PHOTFeIV_A
 ln -sf  $ATOMIC/FE/IV/18oct00/feiv_osc_rev_fabrice.dat    FeIV_F_OSCDAT
 ln -sf  $ATOMIC/FE/IV/18oct00/f_to_s_100.dat              FeIV_F_TO_S
 ln -sf  $ATOMIC/FE/IV/18oct00/col_data.dat                FeIV_COL_DATA
#
 ln -sf  $ATOMIC/FE/V/18oct00/phot_sm_3000.dat             PHOTFeV_A
 ln -sf  $ATOMIC/FE/V/18oct00/f_to_s_139.dat               FeV_F_TO_S
 ln -sf  $ATOMIC/FE/V/18oct00/fev_osc.dat                  FeV_F_OSCDAT
 ln -sf  $ATOMIC/FE/V/18oct00/col_guess.dat                FeV_COL_DATA
#
 ln -sf  $ATOMIC/FE/VI/18oct00/phot_sm_3000.dat            PHOTFeSIX_A
 ln -sf  $ATOMIC/FE/VI/18oct00/fevi_osc.dat                FeSIX_F_OSCDAT
 ln -sf  $ATOMIC/FE/VI/18oct00/f_to_s_67.dat           FeSIX_F_TO_S
 ln -sf  $ATOMIC/FE/VI/18oct00/col_guess.dat                 FeSIX_COL_DATA
#
 ln -sf  $ATOMIC/FE/VII/18oct00/phot_sm_3000.dat           PHOTFeSEV_A
 ln -sf  $ATOMIC/FE/VII/18oct00/fevii_osc.dat              FeSEV_F_OSCDAT
 ln -sf  $ATOMIC/FE/VII/18oct00/f_to_s_69.dat        FeSEV_F_TO_S
 ln -sf  $ATOMIC/FE/VII/18oct00/col_guess.dat               FeSEV_COL_DATA



#-------------------------------------------------------------------------------
# Chromium
#


 ln -sf $ATOMIC/CHRO/II/18oct00/crii_osc.dat           Cr2_F_OSCDAT
 ln -sf $ATOMIC/CHRO/II/18oct00/f_to_s_84.dat           Cr2_F_TO_S
 ln -sf $ATOMIC/CHRO/II/18oct00/phot_data.dat           PHOTCr2_A
 ln -sf $ATOMIC/CHRO/II/18oct00/col_guess.dat           Cr2_COL_DATA
 
# CrIII
 ln -sf $ATOMIC/CHRO/III/18oct00/criii_osc.dat           CrIII_F_OSCDAT
 ln -sf $ATOMIC/CHRO/III/18oct00/f_to_s_68.dat           CrIII_F_TO_S
 ln -sf $ATOMIC/CHRO/III/18oct00/phot_data.dat           PHOTCrIII_A
 ln -sf $ATOMIC/CHRO/III/18oct00/col_guess.dat           CrIII_COL_DATA
# CrIV
 ln -sf $ATOMIC/CHRO/IV/18oct00/criv_osc.dat            CrIV_F_OSCDAT
 ln -sf $ATOMIC/CHRO/IV/18oct00/f_to_s_48.dat           CrIV_F_TO_S
 ln -sf $ATOMIC/CHRO/IV/18oct00/phot_data.dat           PHOTCrIV_A
 ln -sf $ATOMIC/CHRO/IV/18oct00/col_guess.dat           CrIV_COL_DATA

 ln -sf  $ATOMIC/CHRO/V/18oct00/phot_data.dat               PHOTCrV_A
 ln -sf  $ATOMIC/CHRO/V/18oct00/f_to_s_51.dat               CrV_F_TO_S
 ln -sf  $ATOMIC/CHRO/V/18oct00/crv_osc.dat                 CrV_F_OSCDAT
 ln -sf  $ATOMIC/CHRO/V/18oct00/col_guess.dat               CrV_COL_DATA

 ln -sf  $ATOMIC/CHRO/VI/18oct00/phot_data.dat              PHOTCrSIX_A
 ln -sf  $ATOMIC/CHRO/VI/18oct00/f_to_s_30.dat              CrSIX_F_TO_S
 ln -sf  $ATOMIC/CHRO/VI/18oct00/crvi_osc.dat               CrSIX_F_OSCDAT
 ln -sf  $ATOMIC/CHRO/VI/18oct00/col_guess.dat              CrSIX_COL_DATA

#############################################################################################
#
# Manganese
#
#

 ln -sf  $ATOMIC/MAN/II/18oct00/phot_data.dat               PHOTMn2_A
 ln -sf  $ATOMIC/MAN/II/18oct00/mnii_osc.dat                Mn2_F_OSCDAT
 ln -sf  $ATOMIC/MAN/II/18oct00/f_to_s_58.dat               Mn2_F_TO_S
 ln -sf  $ATOMIC/MAN/II/18oct00/col_guess.dat               Mn2_COL_DATA
 
 ln -sf  $ATOMIC/MAN/III/18oct00/phot_data.dat               PHOTMnIII_A
 ln -sf  $ATOMIC/MAN/III/18oct00/mniii_osc.dat                MnIII_F_OSCDAT
 ln -sf  $ATOMIC/MAN/III/18oct00/f_to_s_47.dat               MnIII_F_TO_S
 ln -sf  $ATOMIC/MAN/III/18oct00/col_guess.dat               MnIII_COL_DATA
 ln -sf  $ATOMIC/MAN/IV/18oct00/phot_data.dat               PHOTMnIV_A
 ln -sf  $ATOMIC/MAN/IV/18oct00/mniv_osc.dat                MnIV_F_OSCDAT
 ln -sf  $ATOMIC/MAN/IV/18oct00/f_to_s_47.dat               MnIV_F_TO_S
 ln -sf  $ATOMIC/MAN/IV/18oct00/col_guess.dat               MnIV_COL_DATA
 ln -sf  $ATOMIC/MAN/V/18oct00/phot_data.dat                PHOTMnV_A
 ln -sf  $ATOMIC/MAN/V/18oct00/mnv_osc.dat                  MnV_F_OSCDAT
 ln -sf  $ATOMIC/MAN/V/18oct00/f_to_s_36.dat                MnV_F_TO_S
 ln -sf  $ATOMIC/MAN/V/18oct00/col_guess.dat                MnV_COL_DATA
 ln -sf  $ATOMIC/MAN/VI/18oct00/phot_data.dat               PHOTMnSIX_A
 ln -sf  $ATOMIC/MAN/VI/18oct00/mnvi_osc.dat                MnSIX_F_OSCDAT
 ln -sf  $ATOMIC/MAN/VI/18oct00/f_to_s_41.dat               MnSIX_F_TO_S
 ln -sf  $ATOMIC/MAN/VI/18oct00/col_guess.dat               MnSIX_COL_DATA



#
#*****************************************************************************
#  Nickel
#  ------
#*****************************************************************************
#

 ln -sf  $ATOMIC/NICK/II/18oct00/phot_data.dat               PHOTNk2_A
 ln -sf  $ATOMIC/NICK/II/18oct00/f_to_s_59.dat               Nk2_F_TO_S
 ln -sf  $ATOMIC/NICK/II/18oct00/nkii_osc.dat               Nk2_F_OSCDAT
 ln -sf  $ATOMIC/NICK/II/18oct00/col_guess.dat               Nk2_COL_DATA 
 ln -sf  $ATOMIC/NICK/III/18oct00/phot_data.dat               PHOTNkIII_A
 ln -sf  $ATOMIC/NICK/III/18oct00/f_to_s_47.dat               NkIII_F_TO_S
 ln -sf  $ATOMIC/NICK/III/18oct00/nkiii_osc.dat               NkIII_F_OSCDAT
 ln -sf  $ATOMIC/NICK/III/18oct00/col_guess.dat               NkIII_COL_DATA 
 ln -sf  $ATOMIC/NICK/IV/18oct00/phot_data.dat                PHOTNkIV_A
 ln -sf  $ATOMIC/NICK/IV/18oct00/f_to_s_115.dat               NkIV_F_TO_S
 ln -sf  $ATOMIC/NICK/IV/18oct00/nkiv_osc.dat                 NkIV_F_OSCDAT
 ln -sf  $ATOMIC/NICK/IV/18oct00/col_guess.dat                NkIV_COL_DATA 
 ln -sf  $ATOMIC/NICK/V/18oct00/phot_data.dat                 PHOTNkV_A
 ln -sf  $ATOMIC/NICK/V/18oct00/f_to_s_152.dat                NkV_F_TO_S
 ln -sf  $ATOMIC/NICK/V/18oct00/nkv_osc.dat                   NkV_F_OSCDAT
 ln -sf  $ATOMIC/NICK/V/18oct00/col_guess.dat                 NkV_COL_DATA
 ln -sf  $ATOMIC/NICK/VI/18oct00/phot_data.dat                PHOTNkSIX_A
 ln -sf  $ATOMIC/NICK/VI/18oct00/f_to_s_135.dat               NkSIX_F_TO_S
 ln -sf  $ATOMIC/NICK/VI/18oct00/nkvi_osc.dat                 NkSIX_F_OSCDAT
 ln -sf  $ATOMIC/NICK/VI/18oct00/col_guess.dat                NkSIX_COL_DATA
 ln -sf  $ATOMIC/NICK/VII/18oct00/phot_data.dat                PHOTNkSEV_A
 ln -sf  $ATOMIC/NICK/VII/18oct00/f_to_s_61.dat                NkSEV_F_TO_S
 ln -sf  $ATOMIC/NICK/VII/18oct00/nkvii_osc.dat                NkSEV_F_OSCDAT
 ln -sf  $ATOMIC/NICK/VII/18oct00/col_guess.dat                NkSEV_COL_DATA

#
#*****************************************************************************
#
# END OF ATOMIC DATA SOFT LINKS
#
#*****************************************************************************


 ln -sf He2_IN                 T_IN


#***********************************************************************
#***********************************************************************
#    Run program
#***********************************************************************
#***********************************************************************

#Putting time stamp etc on program

#setenv BITSIZE `uname -p`

rm -f batch.log

echo "Program started on:" > 'batch.log'
date >> 'batch.log'
echo "Machine name is :" >> 'batch.log'
uname -n >> 'batch.log'
exec $CMFGEN_PROG  >>& 'batch.log'
#
echo "Program finished on:" >> 'batch.log'
date >> 'batch.log'

date

