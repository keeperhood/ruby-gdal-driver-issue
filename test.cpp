#include "ogr_api.h"
#include "gdal_priv.h"

int main()
{
    const char *pszDriverName = "ESRI Shapefile";
    OGRSFDriverH poDriver;

    OGRRegisterAll();
    int count = OGRGetDriverCount();
    poDriver = OGRGetDriverByName(pszDriverName);
    printf("%d \n", count);
    for( int a = 0; a < count; a = a + 1 ) {
      OGRSFDriverH drv = OGRGetDriver(a);
      printf( "%s, ", OGR_Dr_GetName(drv));
    }
    printf("\n");

    if( poDriver == NULL )
    {
      printf( "%s driver not available.\n", pszDriverName );
      exit( 1 );
    } {
      printf( "%s driver is available. \n", pszDriverName );
    }
}