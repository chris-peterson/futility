function Get-OldestLastWriteTime {
    [CmdletBinding()]
    [Alias("oldest")]

    param (
        [Parameter(Mandatory = $true, ValueFromPipeline=$true)]
        $Item,

        [Parameter(Mandatory = $false)]
        [Alias('f')]
        $DateFormatString = 'u'
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
            Select-Object -First 1 -ExpandProperty LastWriteTime |
            ForEach-Object ToString($DateFormatString)
    }
}

function Get-NewestLastWriteTime {
    [CmdletBinding()]
    [Alias("newest")]

    param (
        [Parameter(Mandatory = $true, ValueFromPipeline=$true)]
        $Item,

        [Parameter(Mandatory = $false)]
        [Alias('f')]
        $DateFormatString = 'u'
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
            Select-Object -First 1 -ExpandProperty LastWriteTime |
            ForEach-Object ToString($DateFormatString)
    }
}
