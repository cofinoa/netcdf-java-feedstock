mkdir "%PREFIX%"\lib
mkdir "%PREFIX%"\lib\java
mkdir "%SCRIPTS%"\
copy "%SRC_DIR%\toolsUI-%PKG_VERSION%.jar" "%PREFIX%\lib\java\toolsUI.jar"

echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.ui.ToolsUI                         %%* > "%SCRIPTS%\ncj4-toolsui.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.write.Nccopy                       %%* > "%SCRIPTS%\ncj4-nccopy.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.NCdumpW                            %%* > "%SCRIPTS%\ncj4-ncdump.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.util.CompareNetcdf2                %%* > "%SCRIPTS%\ncj4-nccompare.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.iosp.bufr.writer.BufrSplitter      %%* > "%SCRIPTS%\ncj4-bufrspliter.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.ft.point.writer.CFPointWriter      %%* > "%SCRIPTS%\ncj4-cfpointwriter.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.grib.collection.GribCdmIndex       %%* > "%SCRIPTS%\ncj4-gribcdmindex.bat"
echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar ucar.nc2.ft.scan.FeatureScan                %%* > "%SCRIPTS%\ncj4-featurescan.bat"
rem echo java -Xms512m -Xmx4g %JAVA_OPTS% -cp %PREFIX%\lib\java\toolsUI.jar thredds.client.catalog.tools.CatalogCrawler %%* > "%SCRIPTS%\ncj4-catalogcrawler.bat"


  
  
  
   
  
