#!/bin/bash
export XML_CATALOG_FILES=`pwd`/dtd/catalog-test-jats-v1.xml
cp head.xml pubMedMath.xml
#--path './dtd/dtd/'
find ../pm/pubMedMML/ -name '*.nxml' | xargs -i xsltproc jats-to-mediawiki.xsl {} >> pubMedMath.xml
echo "</mediawiki>" >> pubMedMath.xml