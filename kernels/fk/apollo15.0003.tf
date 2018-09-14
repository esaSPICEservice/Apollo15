KPL/FK

Apollo 15 Frames Kernel
===============================================================================

   This frame kernel contains the complete set of frame definitions for
   the Apollo 15 spacecraft including definitions for the
   spacecraft frame, instrument platform frame, and science instrument
   frames.


Version and Date
-------------------------------------------------------------------------------

   Version 1.1 -- August 14, 2018 - Alfredo Escalante
		- Added the A15_XRAY frame defining the reference frame for the 
		  x-ray instrument. 
		- Added the A15_SUN frame defining the reference frame for the 
		  Sun instrument. 

   Version 1.0 -- December 13, 2006 - Jacob Danton



References
-------------------------------------------------------------------------------

   1. 


A15 Frames
-------------------------------------------------------------------------------

   The following A15 frames are defined in this kernel file:

           Name                  Relative to           Type       NAIF ID
      ======================  ===================  ============   =======

   Spacecraft frame:
   -----------------
      A15_SPACECRAFT          rel.to B1950         CK             -915000

   Instrument Platform frame:
   --------------------------
      A15_PLATFORM            rel.to A15_XRAY      FIXED          -915001

   Science Instrument frames:
   --------------------------
      A15_METRIC              rel.to B1950         CK             -915240
      A15_PANORAMIC           rel.to B1950         CK             -915230
	  A15_XRAY                rel.to B1950         CK             -915250
	  A15_SUN                 rel.to B1950         CK             -915260


A15 Frames Hierarchy
-------------------------------------------------------------------------------

   The diagram below shows A15 frames hierarchy:


                               "B1950" INERTIAL
        +-------------------+------------+-----+-----+----------+
        |                   |            |     |     |          |
        | <--pck            | <--ck      |     |     |          | <--pck
        |                   |            |     |     |          | 
        V                   V            |     |     |          V
    "IAU_MOON"      "A15_SPACECRAFT"     |     |     |     "IAU_EARTH"
    -----------     ----------------     |     |     |     -----------
                                         |     |     |        
                                         |     |     |               
         +-------------------------------+     |     |                 
         |                                     |     |        
         |                    +----------------+     |        
         | <--ck              | <--ck                | <--ck	
         |                    |                      |        
         |                    |                      |			
         V                    V                      V			
    "A15_METRIC"       "A15_PANORAMIC"           "A15_XRAY"	  
     ----------           ----------              --------    
	                                                 |      
													 | <--fixed
													 |   	
													 V		
                                                A15_PLATFORM     
												 ----------	 
													 |      
													 | <--fixed
													 |   	
													 V		
                                                  A15_SUN     
   											      -------	 

Spacecraft Bus Frame
-------------------------------------------------------------------------------

   \begindata

      FRAME_A15_SPACECRAFT     = -915000
      FRAME_-915000_NAME        = 'A15_PLATFORM'
      FRAME_-915000_CLASS       = 4
      FRAME_-915000_CLASS_ID    = -915000
      FRAME_-915000_CENTER      = -915
      TKFRAME_-915000_SPEC      = 'ANGLES'
      TKFRAME_-915000_RELATIVE  = 'A15_XRAY'
      TKFRAME_-915000_ANGLES    = ( -142.25, 0.0, 0.0 )
      TKFRAME_-915000_AXES      = (   1,   2,   3 )
      TKFRAME_-915000_UNITS     = 'DEGREES'

   \begintext

Science Instrument Frames
-------------------------------------------------------------------------------
   
   \begindata

      FRAME_A15_METRIC         = -915240
      FRAME_-915240_NAME        = 'A15_METRIC'
      FRAME_-915240_CLASS       = 3
      FRAME_-915240_CLASS_ID    = -915240
      FRAME_-915240_CENTER      = -915
      CK_-915240_SCLK           = -915
      CK_-915240_SPK            = -915

      FRAME_A15_PANORAMIC      = -915230
      FRAME_-915230_NAME        = 'A15_PANORAMIC'
      FRAME_-915230_CLASS       = 3
      FRAME_-915230_CLASS_ID    = -915230
      FRAME_-915230_CENTER      = -915
      CK_-915230_SCLK           = -915
      CK_-915230_SPK            = -915
	  
	  FRAME_A15_XRAY           = -915250
      FRAME_-915250_NAME        = 'A15_XRAY'
      FRAME_-915250_CLASS       = 3
      FRAME_-915250_CLASS_ID    = -915250
      FRAME_-915250_CENTER      = -915
      CK_-915250_SCLK           = -915
      CK_-915250_SPK            = -915
	  
	  FRAME_A15_SUN            = -915260
      FRAME_-915260_NAME        = 'A15_SUN'
      FRAME_-915260_CLASS       = 4
      FRAME_-915260_CLASS_ID    = -915260
      FRAME_-915260_CENTER      = -915
      TKFRAME_-915260_SPEC      = 'ANGLES'
      TKFRAME_-915260_RELATIVE  = 'A15_XRAY'
      TKFRAME_-915260_ANGLES    = ( 0.0, 0.0, 180.0 )
      TKFRAME_-915260_AXES      = (   1,   2,   3 )
      TKFRAME_-915260_UNITS     = 'DEGREES'

   \begintext


Apollo 15 NAIF ID Codes -- Definition Section
========================================================================

   This section contains name to NAIF ID mappings for the A15. Once the
   contents of this file is loaded into the KERNEL POOL, these mappings
   become available within SPICE, making it possible to use names
   instead of ID code in the high level SPICE routine calls.

   Spacecraft and its structures: 
   ------------------------------

      APOLLO 15                  -915
      A15                        -915

      A15_SPACECRAFT_BUS         -915000
      A15_SC_BUS                 -915000
      A15_SPACECRAFT             -915000

      A15_INSTRUMENT_PLATFORM    -915000
      A15_PLATFORM               -915000

   Science Instruments:
   --------------------

      A15_METRIC                 -915240
      A15_PANORAMIC              -915230
	  A15_XRAY                   -915250

   The mappings summarized in this table are implemented by the keywords 
   below.

   \begindata

      NAIF_BODY_NAME += ( 'APOLLO 15'               )
      NAIF_BODY_CODE += ( -915                       )

      NAIF_BODY_NAME += ( 'A15'                     )
      NAIF_BODY_CODE += ( -915                       )

      NAIF_BODY_NAME += ( 'A15_SPACECRAFT_BUS'      )
      NAIF_BODY_CODE += ( -915000                   )

      NAIF_BODY_NAME += ( 'A15_SC_BUS'              )
      NAIF_BODY_CODE += ( -915000                   )

      NAIF_BODY_NAME += ( 'A15_SPACECRAFT'          )
      NAIF_BODY_CODE += ( -915000                   )

      NAIF_BODY_NAME += ( 'A15_METRIC'              )
      NAIF_BODY_CODE += ( -915240                   )

      NAIF_BODY_NAME += ( 'A15_PANORAMIC'           )
      NAIF_BODY_CODE += ( -915230                   )
	  
	  NAIF_BODY_NAME += ( 'A15_XRAY'                )
      NAIF_BODY_CODE += ( -915250                   )

\begintext

Definition of the nadir frame
-----------------------------
  All vectors are geometric: no aberration corrections are used.

  The +Z axis points from the spacecraft to the center of the Moon.

  The component of the Moon's north pole direction orthogonal to
  to Z is aligned with the +Y axis; the +Y axis points North.

  The +X axis is the cross product of the +Y axis and the +Z axis;
  the +X axis points West.


Associated Kernels
------------------

  In order to use this kernel, the following kernels must
  be loaded:

      - An SPK file giving the position of the Apollo 15
        spacecraft with respect to the Moon

      - A text PCK containing orientation data for the Moon

  For most geometry computations, the following additional kernels
  will be needed:

      - A planetary ephemeris SPK, for example de405.bsp

      - A leapseconds kernel


Restrictions
------------

1) The geometric frame specification used in this kernel is
  not usable for spacecraft latitudes of +/- 90 degrees. The frame
  implementation is subject to severe loss of precision
  for spacecraft latitudes near these limits.

2) This kernel cannot be used with SPICE Toolkit versions preceding
  version N0058.


Frame specification data
------------------------

\begindata

  FRAME_APOLLO_15_NADIR        = 1400015
  FRAME_1400015_NAME           = 'APOLLO_15_NADIR'
  FRAME_1400015_CLASS          = 5
  FRAME_1400015_CLASS_ID       = 1400015
  FRAME_1400015_CENTER         = -915
  FRAME_1400015_RELATIVE       = 'J2000'
  FRAME_1400015_DEF_STYLE      = 'PARAMETERIZED'
  FRAME_1400015_FAMILY         = 'TWO-VECTOR'
  FRAME_1400015_PRI_AXIS       = 'Z'
  FRAME_1400015_PRI_VECTOR_DEF = 'OBSERVER_TARGET_POSITION'
  FRAME_1400015_PRI_OBSERVER   = -915
  FRAME_1400015_PRI_TARGET     = 'MOON'
  FRAME_1400015_PRI_ABCORR     = 'NONE'
  FRAME_1400015_SEC_AXIS       = 'X'
  FRAME_1400015_SEC_VECTOR_DEF = 'CONSTANT'
  FRAME_1400015_SEC_SPEC       = 'RECTANGULAR'
  FRAME_1400015_SEC_VECTOR     = ( 0, 0, 1 )
  FRAME_1400015_SEC_FRAME      = 'IAU_MOON'
  FRAME_1400015_SEC_ABCORR     = 'NONE'

\begintext

