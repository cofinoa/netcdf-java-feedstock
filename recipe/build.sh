#!/usr/bin/env bash

set -exuo pipefail

mkdir -p $PREFIX/lib/java
mkdir -p $PREFIX/bin
cp $SRC_DIR/toolsUI-$PKG_VERSION.jar $PREFIX/lib/java/toolsUI.jar

cat <<EOF >${PREFIX}/bin/ncj4-toolsui
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.ui.ToolsUI "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-toolsui

cat <<EOF >${PREFIX}/bin/ncj4-nccopy
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.write.Nccopy "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-nccopy

cat <<EOF >${PREFIX}/bin/ncj4-ncdump
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.NCdumpW "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-ncdump

cat <<EOF >${PREFIX}/bin/ncj4-nccompare
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.util.CompareNetcdf2 "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-nccompare

cat <<EOF >${PREFIX}/bin/ncj4-bufrspliter
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.iosp.bufr.writer.BufrSplitter "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-bufrspliter

cat <<EOF >${PREFIX}/bin/ncj4-cfpointwriter
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.ft.point.writer.CFPointWriter "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-cfpointwriter

cat <<EOF >${PREFIX}/bin/ncj4-gribcdmindex
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.grib.collection.GribCdmIndex "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-gribcdmindex

cat <<EOF >${PREFIX}/bin/ncj4-featurescan
#!/usr/bin/env bash
java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar ucar.nc2.ft.scan.FeatureScan "\$@"
EOF
chmod +x ${PREFIX}/bin/ncj4-featurescan

#cat <<EOF >${PREFIX}/bin/ncj4-catalogcrawler
##!/usr/bin/env bash
#java -Xms512m -Xmx4g \$JAVA_OPTS -cp $PREFIX/lib/java/toolsUI.jar thredds.client.catalog.tools.CatalogCrawler "\$@"
#EOF
#chmod +x ${PREFIX}/bin/ncj4-catalogcrawler
