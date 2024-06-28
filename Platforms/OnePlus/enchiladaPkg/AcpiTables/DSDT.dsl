DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOM  ", "SDM845 ", 3)
{
    Scope (\_SB)
    {

        //
        // Global Variables
        //
        Name (PSUB, "MTP00845")

        //
        // PMIC (Incomplete)
        //
        Include ("pmic.dsl")

        //
        // SPMI
        //
        Include ("spmi.dsl")

        //
        // GPIO Controller
        //
        //Include ("gpio.dsl")

        //
        // CPU Cores & Clusters
        //
        Include ("cpu.dsl")

        //
        // UFS
        //
        Include ("ufs.dsl")

        //
        // USB Port (Incomplete)
        //
        Include ("usb.dsl");

        //
        // Buttons
        //
        Include ("buttons.dsl");
    }
}
