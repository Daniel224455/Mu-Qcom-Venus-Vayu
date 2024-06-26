DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOM  ", "SDM845 ", 3)
{
    Scope (\_SB)
    {
        //
        // Global Variables
        //
        Name (PSUB, "MTP00845")

        //
        // SD Card
        //
        //Include ("sd-card.asl")

        //
        // PMIC (Incomplete)
        //
        //Include ("pmic.asl")

        //
        // SPMI
        //
        //Include ("spmi.asl")

        //
        // GPIO Controller
        //
        //Include ("gpio.asl")

        //
        // CPU Cores & Clusters
        //
        Include ("cpu.asl")

        //
        // UFS
        //
        Include ("ufs.asl")

        //
        // USB Port (Incomplete)
        //
        //Include ("usb.asl")

        //
        // Buttons (Incomplete and Broken?)
        //
        //Include ("buttons.asl")
    }
}
