function Add-ContentToMarkdown {
    [CmdletBinding()]
    param(
        $Content = ""
    )

    Add-Content 'D:\InstalledSoftware.md' $Content
}


function Add-SoftwareDetailsToMarkdown {
    [CmdletBinding()]
    param(
        $SoftwareName = "",
        $DescriptionMarkdown = ""
    )

$Content = @"

## $SoftwareName

$DescriptionMarkdown
"@
   Add-ContentToMarkdown -Content $Content
}