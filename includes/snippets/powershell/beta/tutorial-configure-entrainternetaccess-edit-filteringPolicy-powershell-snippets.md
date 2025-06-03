# PowerShell sample: Edit a filtering policy to add a destination using PATCH
$accessToken = 'YOUR_ACCESS_TOKEN'
$uri = 'https://graph.microsoft.com/beta/networkaccess/filteringPolicies/cccccccc-2222-3333-4444-dddddddddddd/policyRules/<policyRuleId>'
$body = @{
    '@odata.type' = '#microsoft.graph.networkaccess.fqdnFilteringRule'
    destinations = @(
        @{ '@odata.type' = '#microsoft.graph.networkaccess.fqdn'; value = 'bing.com' },
        @{ '@odata.type' = '#microsoft.graph.networkaccess.fqdn'; value = '*.bing.com' },
        @{ '@odata.type' = '#microsoft.graph.networkaccess.fqdn'; value = 'bing.co.uk' }
    )
} | ConvertTo-Json

Invoke-RestMethod -Method Patch -Uri $uri -Headers @{Authorization = "Bearer $accessToken"; 'Content-Type' = 'application/json'} -Body $body
