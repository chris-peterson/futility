function Get-OldestLastWriteTime {
    [CmdletBinding()]
    [Alias("oldest")]

    param (
        [Parameter(ValueFromPipeline = $true)]
        $Items
    )

    $Items |
        Sort-Object -Stable -Property SortableLastWriteTime |
        Select-Object -First 1 -ExpandProperty SortableLastWriteTime
}

function Get-NewestLastWriteTime {
    [CmdletBinding()]
    [Alias("newest")]

    param (
        [Parameter(ValueFromPipeline = $true)]
        $Items
    )

    $Items |
        Sort-Object -Stable -Property SortableLastWriteTime -Descending |
        Select-Object -First 1 -ExpandProperty SortableLastWriteTime
}
