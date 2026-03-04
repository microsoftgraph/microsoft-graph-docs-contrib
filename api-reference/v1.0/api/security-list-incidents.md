---
title: "List incidents"
description: "Get a list of the incident objects and their properties."
author: "LeonardoMele-MSFT"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 03/03/2026
---

# List incidents
Namespace: microsoft.graph.security

Get a list of [incident](../resources/security-incident.md) objects that Microsoft 365 Defender created to track attacks in an organization.

Attacks are typically inflicted on different types of entities, such as devices, users, and mailboxes, resulting in multiple [alert](../resources/security-alert.md) objects. Microsoft 365 Defender correlates alerts with the same attack techniques or the same attacker into an **incident**.

This operation allows you to filter and sort through incidents to create an informed cyber security response. It exposes a collection of incidents that were flagged in your network, within the time range you specified in your environment retention policy. The most recent incidents are displayed at the top of the list.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_list_incidents" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-list-incidents-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/incidents
```

## Optional query parameters
This method supports the following OData query parameters to help customize the response: `$count`, `$filter`, `$skip`, `$top`, `$expand`.

The following properties support `$filter` : **assignedTo**, **classification**, **createdDateTime**, **determination**, **lastUpdateDateTime**, **severity**, and **status**.

Use `@odata.nextLink` for pagination.

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/incidents?$count=true
GET /security/incidents?$filter={property}+eq+'{property-value}'
GET /security/incidents?$top=10
```

For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [incident](../resources/security-incident.md) objects in the response body.

## Examples
### Example 1: List all incidents
#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_incident_for_defender"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/incidents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-incident-for-defender-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-incident-for-defender-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-incident-for-defender-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-incident-for-defender-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-incident-for-defender-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-incident-for-defender-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-incident-for-defender-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.incident)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/incidents",
    "value": [
        {
            "id": "29",
            "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
            "status": "active",
            "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
            "redirectIncidentId": null,
            "displayName": "Multi-stage incident involving Execution & Command and control on one endpoint",
            "createdDateTime": "2026-01-22T12:09:23.1433333Z",
            "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
            "assignedTo": "admin@contoso.com",
            "classification": "truePositive",
            "determination": "multiStagedAttack",
            "severity": "high",
            "customTags": [
                "Demo"
            ],
            "systemTags": [],
            "description": "Microsoft observed Raspberry Robin worm activity spreading through infected USB devices on multiple endpoints in your environment.",
            "lastModifiedBy": "API-App:admin@contoso.com",
            "resolvingComment": null,
            "summary": "Defender Experts has identified malicious activity. This incident has been raised for your awareness and should be investigated as usual.",
            "priorityScore": 100,
            "comments": []
        }
  ]
}
```

### Example 2: List all incidents with their alerts
#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_incident_with_their_alerts"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/incidents?$expand=alerts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-incident-with-their-alerts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-incident-with-their-alerts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-incident-with-their-alerts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-incident-with-their-alerts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-incident-with-their-alerts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-incident-with-their-alerts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-incident-with-their-alerts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.incident)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/incidents(alerts())",
    "value": [
        {
            "id": "29",
            "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
            "status": "active",
            "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
            "redirectIncidentId": null,
            "displayName": "Multi-stage incident involving Execution & Command and control on one endpoint",
            "createdDateTime": "2026-01-22T12:09:23.1433333Z",
            "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
            "assignedTo": "admin@contoso.com",
            "classification": "truePositive",
            "determination": "multiStagedAttack",
            "severity": "high",
            "customTags": [
                "Demo"
            ],
            "systemTags": [],
            "description": "Microsoft observed Raspberry Robin worm activity spreading through infected USB devices on multiple endpoints in your environment.",
            "lastModifiedBy": "API-App:admin@contoso.com",
            "resolvingComment": null,
            "summary": "Defender Experts has identified malicious activity. This incident has been raised for your awareness and should be investigated as usual.",
            "priorityScore": 100,
            "comments": [],
            "alerts": [
                {
                    "id": "da09e47ccc-b74a-45bb-985f-8d6c077b70b6_1",
                    "providerAlertId": "09e47ccc-b74a-45bb-985f-8d6c077b70b6_1",
                    "incidentId": "29",
                    "status": "new",
                    "severity": "medium",
                    "classification": "truePositive",
                    "determination": "multiStagedAttack",
                    "serviceSource": "microsoftDefenderForEndpoint",
                    "detectionSource": "microsoftDefenderForEndpoint",
                    "productName": "Microsoft Defender for Endpoint",
                    "detectorId": "da88ec89-31c5-4864-8609-dce36e65bbc4",
                    "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "title": "A WMI event filter was bound to a suspicious event consumer",
                    "description": "An event consumer represents the action to take upon the firing of an event. Attackers can use the ActiveScriptEventConsumer and CommandLineEventConsumer classes when responding to their events. Both event consumers offer a tremendous amount of flexibility for an attacker to execute any payload they want all without needing to drop a single malicious executable to disk.",
                    "recommendedActions": "1. Find the propagation entry point - check which users were logged on to this machine and which other machines they were observed on to find additional compromised machines.\n2. Gather information - analyze the executed process and if possible block it from running on any machines in the organization.\n3. Analyze logs - analyze all logs from this machine to fully understand what commands were executed, their purpose and impact.",
                    "category": "Persistence",
                    "assignedTo": "admin@contoso.com",
                    "alertWebUrl": "https://security.microsoft.com/alerts/da09e47ccc-b74a-45bb-985f-8d6c077b70b6_1?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [
                        "T1546.003"
                    ],
                    "createdDateTime": "2026-01-22T12:09:22.8566667Z",
                    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2026-01-22T12:08:16.1404016Z",
                    "lastActivityDateTime": "2026-01-22T13:36:33.6406679Z",
                    "systemTags": [],
                    "alertPolicyId": null,
                    "investigationState": "unsupportedAlertType",
                    "comments": [],
                    "customDetails": {},
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2026-01-22T12:09:22.9566667Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [
                                "PrimaryDevice"
                            ],
                            "tags": [],
                            "firstSeenDateTime": "2025-08-18T11:09:18.5092327Z",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "azureAdDeviceId": null,
                            "deviceDnsName": "w11pro-test",
                            "hostName": "w11pro-test",
                            "ntDomain": null,
                            "dnsDomain": null,
                            "osPlatform": "Windows11",
                            "osBuild": 26200,
                            "version": "25H2",
                            "healthStatus": "active",
                            "riskScore": "high",
                            "rbacGroupId": 125,
                            "rbacGroupName": "Clients",
                            "onboardingStatus": "onboarded",
                            "defenderAvStatus": "unknown",
                            "lastIpAddress": "172.23.38.127",
                            "lastExternalIpAddress": "93.65.246.85",
                            "ipInterfaces": [
                                "172.19.50.102",
                                "fe80::2f21:c88a:d280:d1dd",
                                "127.0.0.1",
                                "::1"
                            ],
                            "vmMetadata": null,
                            "loggedOnUsers": [],
                            "resourceAccessEvents": []
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.userEvidence",
                            "createdDateTime": "2026-01-22T12:09:22.9566667Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "stream": null,
                            "userAccount": {
                                "accountName": "adminlocal",
                                "domainName": "W11PRO-TEST",
                                "userSid": "S-1-5-21-2144799004-2815524614-4183675894-1001",
                                "azureAdUserId": null,
                                "userPrincipalName": null,
                                "displayName": null,
                                "activeDirectoryObjectGuid": null,
                                "resourceAccessEvents": []
                            }
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.ipEvidence",
                            "createdDateTime": "2026-01-22T12:09:22.9566667Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "ipAddress": "fe80::8505:87aa:de7a:4c9f",
                            "countryLetterCode": null,
                            "stream": null,
                            "location": null
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.processEvidence",
                            "createdDateTime": "2026-01-22T12:09:22.9566667Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 9112,
                            "parentProcessId": 5308,
                            "processCommandLine": "\"powershell.exe\" ",
                            "processCreationDateTime": "2026-01-22T12:05:36.24622Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:00:07.0396146Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "parentProcessImageFile": null,
                            "imageFile": {
                                "sha1": "eb42621654e02faf2de940442b6deb1a77864e5b",
                                "sha256": "0ff6f2c94bc7e2833a5f7e16de1622e5dba70396f31c7d5f56381870317e8c46",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "powershell.exe",
                                "filePath": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0",
                                "fileSize": 454656,
                                "filePublisher": "Microsoft Corporation",
                                "signer": null,
                                "issuer": null
                            },
                            "userAccount": {
                                "accountName": "adminlocal",
                                "domainName": "W11PRO-TEST",
                                "userSid": "S-1-5-21-2144799004-2815524614-4183675894-1001",
                                "azureAdUserId": null,
                                "userPrincipalName": null,
                                "displayName": null,
                                "activeDirectoryObjectGuid": null,
                                "resourceAccessEvents": []
                            }
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.processEvidence",
                            "createdDateTime": "2026-01-22T13:39:13.3433333Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 9420,
                            "parentProcessId": 5308,
                            "processCommandLine": "\"powershell.exe\" ",
                            "processCreationDateTime": "2026-01-22T13:36:17.8092134Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:00:07.0396146Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "imageFile": {
                                "sha1": "eb42621654e02faf2de940442b6deb1a77864e5b",
                                "sha256": "0ff6f2c94bc7e2833a5f7e16de1622e5dba70396f31c7d5f56381870317e8c46",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "powershell.exe",
                                "filePath": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0",
                                "fileSize": 454656,
                                "filePublisher": "Microsoft Corporation",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "explorer.exe",
                                "filePath": "C:\\Windows",
                                "fileSize": 3191352,
                                "filePublisher": "Microsoft Corporation",
                                "signer": null,
                                "issuer": null
                            },
                            "userAccount": {
                                "accountName": "adminlocal",
                                "domainName": "W11PRO-TEST",
                                "userSid": "S-1-5-21-2144799004-2815524614-4183675894-1001",
                                "azureAdUserId": null,
                                "userPrincipalName": null,
                                "displayName": null,
                                "activeDirectoryObjectGuid": null,
                                "resourceAccessEvents": []
                            }
                        }
                    ],
                    "additionalData": {}
                }
            ]
        }
    ]
}
```
