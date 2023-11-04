<project xmlns="com.autoesl.autopilot.project" name="axi_master_hls" top="fir_n11_maxi">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../hls_FIRN11MAXI/FIRTester.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../hls_FIRN11MAXI/out_gold.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="hls_FIRN11MAXI/FIR.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls_FIRN11MAXI/FIR.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

