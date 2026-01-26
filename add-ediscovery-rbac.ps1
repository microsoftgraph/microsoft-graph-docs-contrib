# Script to add RBAC roles to eDiscovery API documentation files

$betaReadOps = @(
    "ediscovery-case-get.md",
    "ediscovery-case-list.md",
    "ediscovery-case-list-custodians.md",
    "ediscovery-case-list-legalholds.md",
    "ediscovery-case-list-operations.md",
    "ediscovery-case-list-reviewsets.md",
    "ediscovery-case-list-sourcecollections.md",
    "ediscovery-case-list-tags.md",
    "ediscovery-caseexportoperation-getdownloadurl.md",
    "ediscovery-casesettings-get.md",
    "ediscovery-custodian-get.md",
    "ediscovery-custodian-list-sitesources.md",
    "ediscovery-custodian-list-unifiedgroupsources.md",
    "ediscovery-custodian-list-usersources.md",
    "ediscovery-legalhold-get.md",
    "ediscovery-legalhold-list-sitesources.md",
    "ediscovery-legalhold-list-usersources.md",
    "ediscovery-noncustodialdatasource-get.md",
    "ediscovery-noncustodialdatasource-list.md",
    "ediscovery-noncustodialdatasource-list-datasource.md",
    "ediscovery-reviewset-get.md",
    "ediscovery-reviewsetquery-get.md",
    "ediscovery-reviewsetquery-list.md",
    "ediscovery-sitesource-get.md",
    "ediscovery-sourcecollection-get.md",
    "ediscovery-sourcecollection-list-additionalsources.md",
    "ediscovery-sourcecollection-list-addtoreviewsetoperation.md",
    "ediscovery-sourcecollection-list-custodiansources.md",
    "ediscovery-sourcecollection-list-lastestimatestatisticsoperation.md",
    "ediscovery-sourcecollection-list-noncustodialsources.md",
    "ediscovery-tag-ashierarchy.md",
    "ediscovery-tag-childtags.md",
    "ediscovery-tag-get.md",
    "ediscovery-unifiedgroupsource-get.md",
    "ediscovery-usersource-get.md"
)

$betaWriteOps = @(
    "ediscovery-case-close.md",
    "ediscovery-case-delete.md",
    "ediscovery-case-post.md",
    "ediscovery-case-post-custodians.md",
    "ediscovery-case-post-legalholds.md",
    "ediscovery-case-post-reviewsets.md",
    "ediscovery-case-post-sourcecollections.md",
    "ediscovery-case-post-tags.md",
    "ediscovery-case-reopen.md",
    "ediscovery-case-update.md",
    "ediscovery-casesettings-resettodefault.md",
    "ediscovery-casesettings-update.md",
    "ediscovery-custodian-activate.md",
    "ediscovery-custodian-post-sitesources.md",
    "ediscovery-custodian-post-unifiedgroupsources.md",
    "ediscovery-custodian-post-usersources.md",
    "ediscovery-custodian-release.md",
    "ediscovery-custodian-update.md",
    "ediscovery-legalhold-delete.md",
    "ediscovery-legalhold-post-sitesources.md",
    "ediscovery-legalhold-post-usersources.md",
    "ediscovery-legalhold-update.md",
    "ediscovery-noncustodialdatasource-post.md",
    "ediscovery-noncustodialdatasource-release.md",
    "ediscovery-reviewset-addtoreviewset.md",
    "ediscovery-reviewset-export.md",
    "ediscovery-reviewsetquery-applytags.md",
    "ediscovery-reviewsetquery-delete.md",
    "ediscovery-reviewsetquery-post.md",
    "ediscovery-reviewsetquery-update.md",
    "ediscovery-sitesource-delete.md",
    "ediscovery-sourcecollection-delete.md",
    "ediscovery-sourcecollection-estimatestatistics.md",
    "ediscovery-sourcecollection-post-additionalsources.md",
    "ediscovery-sourcecollection-post-custodiansources.md",
    "ediscovery-sourcecollection-post-noncustodialsources.md",
    "ediscovery-sourcecollection-purgedata.md",
    "ediscovery-sourcecollection-update.md",
    "ediscovery-tag-delete.md",
    "ediscovery-tag-update.md",
    "ediscovery-unifiedgroupsource-delete.md",
    "ediscovery-usersource-delete.md"
)

$v10ReadOps = @(
    "security-ediscoverycase-get.md",
    "security-ediscoverycase-list-custodians.md",
    "security-ediscoverycase-list-legalholds.md",
    "security-ediscoverycase-list-noncustodialdatasources.md",
    "security-ediscoverycase-list-operations.md",
    "security-ediscoverycase-list-reviewsets.md",
    "security-ediscoverycase-list-searches.md",
    "security-ediscoverycase-list-tags.md",
    "security-ediscoverycasemember-list.md",
    "security-ediscoverycasesettings-get.md",
    "security-ediscoverycustodian-get.md",
    "security-ediscoverycustodian-list-lastindexoperation.md",
    "security-ediscoverycustodian-list-sitesources.md",
    "security-ediscoverycustodian-list-unifiedgroupsources.md",
    "security-ediscoverycustodian-list-usersources.md",
    "security-ediscoveryholdpolicy-get.md",
    "security-ediscoveryholdpolicy-list-sitesources.md",
    "security-ediscoveryholdpolicy-list-usersources.md",
    "security-ediscoverynoncustodialdatasource-get.md",
    "security-ediscoveryreviewset-get.md",
    "security-ediscoveryreviewset-list-queries.md",
    "security-ediscoveryreviewsetquery-get.md",
    "security-ediscoveryreviewtag-ashierarchy.md",
    "security-ediscoveryreviewtag-get.md",
    "security-ediscoverysearch-get.md",
    "security-ediscoverysearch-list-additionalsources.md",
    "security-ediscoverysearch-list-custodiansources.md",
    "security-ediscoverysearch-list-lastestimatestatisticsoperation.md",
    "security-ediscoverysearch-list-noncustodialsources.md"
)

$v10WriteOps = @(
    "security-ediscoverycase-close.md",
    "security-ediscoverycase-delete-legalholds.md",
    "security-ediscoverycase-delete-searches.md",
    "security-ediscoverycase-delete-tags.md",
    "security-ediscoverycase-post-custodians.md",
    "security-ediscoverycase-post-legalholds.md",
    "security-ediscoverycase-post-noncustodialdatasources.md",
    "security-ediscoverycase-post-reviewsets.md",
    "security-ediscoverycase-post-searches.md",
    "security-ediscoverycase-post-tags.md",
    "security-ediscoverycase-reopen.md",
    "security-ediscoverycase-update.md",
    "security-ediscoverycasemember-delete.md",
    "security-ediscoverycasemember-post.md",
    "security-ediscoverycasesettings-resettodefault.md",
    "security-ediscoverycasesettings-update.md",
    "security-ediscoverycustodian-activate.md",
    "security-ediscoverycustodian-applyhold.md",
    "security-ediscoverycustodian-delete-sitesources.md",
    "security-ediscoverycustodian-delete-usersources.md",
    "security-ediscoverycustodian-post-sitesources.md",
    "security-ediscoverycustodian-post-unifiedgroupsources.md",
    "security-ediscoverycustodian-post-usersources.md",
    "security-ediscoverycustodian-release.md",
    "security-ediscoverycustodian-removehold.md",
    "security-ediscoverycustodian-updateindex.md",
    "security-ediscoveryholdpolicy-delete-sitesources.md",
    "security-ediscoveryholdpolicy-delete-usersources.md",
    "security-ediscoveryholdpolicy-post-sitesources.md",
    "security-ediscoveryholdpolicy-post-usersources.md",
    "security-ediscoveryholdpolicy-retrypolicy.md",
    "security-ediscoveryholdpolicy-update.md",
    "security-ediscoverynoncustodialdatasource-applyhold.md",
    "security-ediscoverynoncustodialdatasource-release.md",
    "security-ediscoverynoncustodialdatasource-removehold.md",
    "security-ediscoverynoncustodialdatasource-updateindex.md",
    "security-ediscoveryreviewset-addtoreviewset.md",
    "security-ediscoveryreviewset-delete-queries.md",
    "security-ediscoveryreviewset-export.md",
    "security-ediscoveryreviewset-post-queries.md",
    "security-ediscoveryreviewset-update.md",
    "security-ediscoveryreviewsetquery-applytags.md",
    "security-ediscoveryreviewsetquery-export.md",
    "security-ediscoveryreviewsetquery-update.md",
    "security-ediscoveryreviewtag-update.md",
    "security-ediscoverysearch-delete-custodiansources.md",
    "security-ediscoverysearch-delete-noncustodialsources.md",
    "security-ediscoverysearch-estimatestatistics.md",
    "security-ediscoverysearch-exportreport.md",
    "security-ediscoverysearch-exportresult.md",
    "security-ediscoverysearch-post-additionalsources.md",
    "security-ediscoverysearch-post-custodiansources.md",
    "security-ediscoverysearch-post-noncustodialsources.md",
    "security-ediscoverysearch-purgedata.md",
    "security-ediscoverysearch-update.md"
)

function Add-RBACInclude {
    param(
        [string]$FilePath,
        [string]$IncludePath
    )
    
    $content = Get-Content $FilePath -Raw
    
    # Check if RBAC include already exists
    if ($content -match "rbac-ediscovery-apis") {
        Write-Host "RBAC include already exists in: $FilePath" -ForegroundColor Yellow
        return
    }
    
    # Find the permissions table include line
    $pattern = '\[!INCLUDE \[permissions-table\]\(\.\.\/includes\/permissions\/[^\)]+\)\]'
    
    if ($content -match $pattern) {
        $includeStatement = "`n`n$IncludePath"
        $content = $content -replace "($pattern)", "`$1$includeStatement"
        
        Set-Content -Path $FilePath -Value $content -NoNewline
        Write-Host "Updated: $FilePath" -ForegroundColor Green
    } else {
        Write-Host "Could not find permissions table in: $FilePath" -ForegroundColor Red
    }
}

# Process beta read operations
foreach ($file in $betaReadOps) {
    $path = "d:\repos\microsoft-graph-docs\api-reference\beta\api\$file"
    if (Test-Path $path) {
        Add-RBACInclude -FilePath $path -IncludePath "[!INCLUDE [rbac-ediscovery-read](../includes/rbac-for-apis/rbac-ediscovery-apis-read.md)]"
    }
}

# Process beta write operations
foreach ($file in $betaWriteOps) {
    $path = "d:\repos\microsoft-graph-docs\api-reference\beta\api\$file"
    if (Test-Path $path) {
        Add-RBACInclude -FilePath $path -IncludePath "[!INCLUDE [rbac-ediscovery-write](../includes/rbac-for-apis/rbac-ediscovery-apis-write.md)]"
    }
}

# Process v1.0 read operations
foreach ($file in $v10ReadOps) {
    $path = "d:\repos\microsoft-graph-docs\api-reference\v1.0\api\$file"
    if (Test-Path $path) {
        Add-RBACInclude -FilePath $path -IncludePath "[!INCLUDE [rbac-ediscovery-read](../includes/rbac-for-apis/rbac-ediscovery-apis-read.md)]"
    }
}

# Process v1.0 write operations
foreach ($file in $v10WriteOps) {
    $path = "d:\repos\microsoft-graph-docs\api-reference\v1.0\api\$file"
    if (Test-Path $path) {
        Add-RBACInclude -FilePath $path -IncludePath "[!INCLUDE [rbac-ediscovery-write](../includes/rbac-for-apis/rbac-ediscovery-apis-write.md)]"
    }
}

Write-Host "`nScript completed!" -ForegroundColor Cyan
