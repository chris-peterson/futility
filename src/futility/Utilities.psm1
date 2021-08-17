function Get-OldestLastWriteTime {
    [CmdletBinding()]
    [Alias("oldest")]

    param (
        [Parameter(Mandatory = $true, ValueFromPipeline=$true)]
        $Item
    )

    begin {
        $Data = @()
    }

    process {
        $Data += $Item
    }

    end {
        $Data |
            Sort-Object SortableLastWriteTime |
            Select-Object -First 1 -ExpandProperty SortableLastWriteTime
    }
}

function Get-NewestLastWriteTime {
    [CmdletBinding()]
    [Alias("newest")]

    param (
        [Parameter(Mandatory = $true, ValueFromPipeline=$true)]
        $Item
    )

    begin {
        $Data = @()
    }

    process {
        $Data += $Item
    }

    end {
        $Data |
            Sort-Object SortableLastWriteTime -Descending |
            Select-Object -First 1 -ExpandProperty SortableLastWriteTime
    }
}
