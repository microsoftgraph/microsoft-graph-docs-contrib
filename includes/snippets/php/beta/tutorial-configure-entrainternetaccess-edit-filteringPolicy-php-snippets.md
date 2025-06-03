// PHP sample: Edit a filtering policy to add a destination using PATCH
$accessToken = 'YOUR_ACCESS_TOKEN';
$url = 'https://graph.microsoft.com/beta/networkaccess/filteringPolicies/cccccccc-2222-3333-4444-dddddddddddd/policyRules/<policyRuleId>';

$data = [
    '@odata.type' => '#microsoft.graph.networkaccess.fqdnFilteringRule',
    'destinations' => [
        [ '@odata.type' => '#microsoft.graph.networkaccess.fqdn', 'value' => 'bing.com' ],
        [ '@odata.type' => '#microsoft.graph.networkaccess.fqdn', 'value' => '*.bing.com' ],
        [ '@odata.type' => '#microsoft.graph.networkaccess.fqdn', 'value' => 'bing.co.uk' ]
    ]
];

$options = [
    'http' => [
        'header'  => [
            'Authorization: Bearer ' . $accessToken,
            'Content-type: application/json'
        ],
        'method'  => 'PATCH',
        'content' => json_encode($data),
    ],
];
$context  = stream_context_create($options);
$result = file_get_contents($url, false, $context);
if ($result === FALSE) { /* Handle error */ }
echo $result;
