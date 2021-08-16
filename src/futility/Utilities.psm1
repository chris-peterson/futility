function Get-OldestLastWriteTime {
    [CmdletBinding()]
    [Alias("oldest")]

    param (
        [Parameter(ValueFromPipeline = $true)]
        $Items
    )

    $Items |
        Sort-Object SortableLastAccessTime |
        Select-Object -First 1 -ExpandProperty SortableLastAccessTime
}

function Get-NewestLastWriteTime {
    [CmdletBinding()]
    [Alias("newest")]

    param (
        [Parameter(ValueFromPipeline = $true)]
        $Items
    )

    $Items |
        Sort-Object SortableLastAccessTime |
        Select-Object -Last 1 -ExpandProperty SortableLastAccessTime
}
