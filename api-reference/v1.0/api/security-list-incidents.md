---
title: "List incidents"
description: "Get a list of the incident objects and their properties."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 09/23/2024
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
                },
                {
                    "id": "da19a839c5-3128-49c8-b8a8-e31850e9afd7_1",
                    "providerAlertId": "19a839c5-3128-49c8-b8a8-e31850e9afd7_1",
                    "incidentId": "29",
                    "status": "new",
                    "severity": "low",
                    "classification": "truePositive",
                    "determination": "multiStagedAttack",
                    "serviceSource": "microsoftDefenderForEndpoint",
                    "detectionSource": "microsoftDefenderForEndpoint",
                    "productName": "Microsoft Defender for Endpoint",
                    "detectorId": "9bfe28a9-21eb-4f8a-b51e-38ebd3650c88",
                    "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "title": "Suspicious System Time Discovery",
                    "description": "A known tool or technique was used to gather information on this device. Attackers might be trying to gather information about the target device or network for later attacks.",
                    "recommendedActions": "A. Validate the alert.\n1. Review the alert and inspect the tool that was used to gather information. Inspect the account that was used to launch the tool.\n2. Check the device timeline for other suspicious activities.\n3. Locate unfamiliar processes in the process tree. Check files for prevalence, their locations, and digital signatures.\n4. Submit relevant files for deep analysis and review file behaviors.\n5. Identify unusual system activity with system owners.\n\nB. Scope the incident. Find related devices in the incident graph. \n\nC.  Contain and mitigate the breach. Stop suspicious scripts or processes, isolate affected devices, decommission compromised accounts or reset passwords, block IP addresses and URLs, and install security updates.\n\nD. Contact your incident response team or contact Microsoft support for investigation and remediation services.",
                    "category": "Discovery",
                    "assignedTo": "admin@contoso.com",
                    "alertWebUrl": "https://security.microsoft.com/alerts/da19a839c5-3128-49c8-b8a8-e31850e9afd7_1?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [
                        "T1047",
                        "T1124"
                    ],
                    "createdDateTime": "2026-01-22T12:09:45.5333333Z",
                    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2026-01-22T12:08:16.1404016Z",
                    "lastActivityDateTime": "2026-01-22T13:37:57.2131385Z",
                    "systemTags": [],
                    "alertPolicyId": null,
                    "investigationState": "unsupportedAlertType",
                    "comments": [],
                    "customDetails": {},
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2026-01-22T12:09:45.54Z",
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
                            "ipInterfaces": [],
                            "vmMetadata": null,
                            "loggedOnUsers": [],
                            "resourceAccessEvents": []
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.userEvidence",
                            "createdDateTime": "2026-01-22T12:09:45.54Z",
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
                            "createdDateTime": "2026-01-22T12:09:45.54Z",
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
                            "createdDateTime": "2026-01-22T12:09:45.54Z",
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
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.processEvidence",
                            "createdDateTime": "2026-01-22T13:39:28.93Z",
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
                },
                {
                    "id": "da351c9257-7cf8-40a5-9605-4ae38e9c0f7f_1",
                    "providerAlertId": "351c9257-7cf8-40a5-9605-4ae38e9c0f7f_1",
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
                    "alertWebUrl": "https://security.microsoft.com/alerts/da351c9257-7cf8-40a5-9605-4ae38e9c0f7f_1?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [
                        "T1546.003"
                    ],
                    "createdDateTime": "2026-01-22T13:53:49.9966667Z",
                    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2026-01-22T13:52:38.1669221Z",
                    "lastActivityDateTime": "2026-01-22T13:52:38.1669221Z",
                    "systemTags": [],
                    "alertPolicyId": null,
                    "investigationState": "unsupportedAlertType",
                    "comments": [],
                    "customDetails": {},
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2026-01-22T13:53:50.0766667Z",
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
                            "loggedOnUsers": [
                                {
                                    "accountName": "adminlocal",
                                    "domainName": "W11PRO-TEST"
                                }
                            ],
                            "resourceAccessEvents": []
                        }
                    ],
                    "additionalData": {}
                },
                {
                    "id": "da7d0bdeff-b6bd-4c00-821f-a5b8a88dea18_1",
                    "providerAlertId": "7d0bdeff-b6bd-4c00-821f-a5b8a88dea18_1",
                    "incidentId": "29",
                    "status": "new",
                    "severity": "medium",
                    "classification": "truePositive",
                    "determination": "multiStagedAttack",
                    "serviceSource": "microsoftDefenderForEndpoint",
                    "detectionSource": "microsoftDefenderForEndpoint",
                    "productName": "Microsoft Defender for Endpoint",
                    "detectorId": "ca8cbf97-993f-41ab-b861-2feb8366f77f",
                    "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "title": "PsExec launched a command locally",
                    "description": "PsExec was used to launch a command locally. PsExec is a tool used to launch programs on remote, or local devices. An attacker might be leveraging this tool to launch malicious commands on the device.",
                    "recommendedActions": "A. Validate the alert.\n1. Locate the process that is related to the alert. Inspect parent processes and why they were launched.\n2. Take note of the command that might have been executed.\n3. Verify the unusual system activity with system owners.​\n4. Check files for prevalence, their locations, and digital signatures.​\n5. Check the timeline of both the devices for other suspicious activities around the time of the alert.\n6. Submit relevant files for deep analysis and review file behaviors. ​\n\nB. Scope the incident.\n1. Find related alerts and activities within the device. Find out whether they are part of a wider incident in the incident graph.\n2. Identify unexpected processes, check suspicious files for prevalence, location and digital signature, submit for deep analysis to inspect behaviors.\n3. Identify communications to devices, network addresses, and domains. Verify unusual activities with device owners. Check reputation of URLs and websites.\n\nC. Contain and mitigate the breach.\n1. If activity on any of the involved devices is unexpected, isolate the device to prevent the threat from progressing.\n2. Stop suspicious processes.\n3. Decommission compromised accounts or reset passwords\n4. Block IP addresses and URLs.\n5. Install security updates.\n\nD. Contact your incident response team or contact Microsoft support for investigation and remediation services.",
                    "category": "Execution",
                    "assignedTo": "admin@contoso.com",
                    "alertWebUrl": "https://security.microsoft.com/alerts/da7d0bdeff-b6bd-4c00-821f-a5b8a88dea18_1?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [
                        "T1569.002"
                    ],
                    "createdDateTime": "2026-01-22T12:09:44.5466667Z",
                    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2026-01-22T12:05:37.0984262Z",
                    "lastActivityDateTime": "2026-01-22T12:07:57.6326541Z",
                    "systemTags": [],
                    "alertPolicyId": null,
                    "investigationState": "unsupportedAlertType",
                    "comments": [],
                    "customDetails": {},
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2026-01-22T12:09:44.5566667Z",
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
                            "hostName": "W11Pro-Test",
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
                            "ipInterfaces": [],
                            "vmMetadata": null,
                            "loggedOnUsers": [],
                            "resourceAccessEvents": []
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.userEvidence",
                            "createdDateTime": "2026-01-22T12:09:44.5566667Z",
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
                            "createdDateTime": "2026-01-22T12:09:44.5566667Z",
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
                            "createdDateTime": "2026-01-22T12:09:44.5566667Z",
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
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.processEvidence",
                            "createdDateTime": "2026-01-22T12:09:44.5566667Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 5004,
                            "parentProcessId": 9112,
                            "processCommandLine": "\"PsExec64.exe\" notepad.exe",
                            "processCreationDateTime": "2026-01-22T12:07:51.9861054Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:05:36.24622Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "imageFile": {
                                "sha1": "0098c79e1404b4399bf0e686d88dbf052269a302",
                                "sha256": "edfae1a69522f87b12c6dac3225d930e4848832e3c551ee1e7d31736bf4525ef",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "PsExec64.exe",
                                "filePath": "C:\\Users\\adminlocal\\Desktop\\PSTools",
                                "fileSize": 833472,
                                "filePublisher": "Sysinternals - www.sysinternals.com",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
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
                            "createdDateTime": "2026-01-22T12:09:44.7033333Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 5856,
                            "parentProcessId": 9112,
                            "processCommandLine": "\"PsExec64.exe\" -s notepad.exe",
                            "processCreationDateTime": "2026-01-22T12:07:57.627948Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:05:36.24622Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "imageFile": {
                                "sha1": "0098c79e1404b4399bf0e686d88dbf052269a302",
                                "sha256": "edfae1a69522f87b12c6dac3225d930e4848832e3c551ee1e7d31736bf4525ef",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "PsExec64.exe",
                                "filePath": "C:\\Users\\adminlocal\\Desktop\\PSTools",
                                "fileSize": 833472,
                                "filePublisher": "Sysinternals - www.sysinternals.com",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
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
                        }
                    ],
                    "additionalData": {}
                },
                {
                    "id": "dac63d1d29-0734-436f-8d7d-189002396257_1",
                    "providerAlertId": "c63d1d29-0734-436f-8d7d-189002396257_1",
                    "incidentId": "29",
                    "status": "new",
                    "severity": "medium",
                    "classification": "truePositive",
                    "determination": "multiStagedAttack",
                    "serviceSource": "microsoftDefenderForEndpoint",
                    "detectionSource": "microsoftDefenderForEndpoint",
                    "productName": "Microsoft Defender for Endpoint",
                    "detectorId": "ca8cbf97-993f-41ab-b861-2feb8366f77f",
                    "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "title": "PsExec launched a command locally",
                    "description": "PsExec was used to launch a command locally. PsExec is a tool used to launch programs on remote, or local devices. An attacker might be leveraging this tool to launch malicious commands on the device.",
                    "recommendedActions": "A. Validate the alert.\n1. Locate the process that is related to the alert. Inspect parent processes and why they were launched.\n2. Take note of the command that might have been executed.\n3. Verify the unusual system activity with system owners.​\n4. Check files for prevalence, their locations, and digital signatures.​\n5. Check the timeline of both the devices for other suspicious activities around the time of the alert.\n6. Submit relevant files for deep analysis and review file behaviors. ​\n\nB. Scope the incident.\n1. Find related alerts and activities within the device. Find out whether they are part of a wider incident in the incident graph.\n2. Identify unexpected processes, check suspicious files for prevalence, location and digital signature, submit for deep analysis to inspect behaviors.\n3. Identify communications to devices, network addresses, and domains. Verify unusual activities with device owners. Check reputation of URLs and websites.\n\nC. Contain and mitigate the breach.\n1. If activity on any of the involved devices is unexpected, isolate the device to prevent the threat from progressing.\n2. Stop suspicious processes.\n3. Decommission compromised accounts or reset passwords\n4. Block IP addresses and URLs.\n5. Install security updates.\n\nD. Contact your incident response team or contact Microsoft support for investigation and remediation services.",
                    "category": "Execution",
                    "assignedTo": "admin@contoso.com",
                    "alertWebUrl": "https://security.microsoft.com/alerts/dac63d1d29-0734-436f-8d7d-189002396257_1?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [
                        "T1569.002"
                    ],
                    "createdDateTime": "2026-01-22T12:09:44.3466667Z",
                    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2026-01-22T12:05:37.0984262Z",
                    "lastActivityDateTime": "2026-01-22T12:07:33.2339376Z",
                    "systemTags": [],
                    "alertPolicyId": null,
                    "investigationState": "unsupportedAlertType",
                    "comments": [],
                    "customDetails": {},
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2026-01-22T12:09:44.3566667Z",
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
                            "hostName": "W11Pro-Test",
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
                            "ipInterfaces": [],
                            "vmMetadata": null,
                            "loggedOnUsers": [],
                            "resourceAccessEvents": []
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.userEvidence",
                            "createdDateTime": "2026-01-22T12:09:44.3566667Z",
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
                            "createdDateTime": "2026-01-22T12:09:44.3566667Z",
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
                            "createdDateTime": "2026-01-22T12:09:44.3566667Z",
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
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.processEvidence",
                            "createdDateTime": "2026-01-22T12:09:44.3566667Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 8436,
                            "parentProcessId": 9112,
                            "processCommandLine": "\"PsExec.exe\" -s cmd.exe",
                            "processCreationDateTime": "2026-01-22T12:06:06.3703991Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:05:36.24622Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "imageFile": {
                                "sha1": "3e2272b916da4be3c120d17490423230ab62c174",
                                "sha256": "078163d5c16f64caa5a14784323fd51451b8c831c73396b967b4e35e6879937b",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "PsExec.exe",
                                "filePath": "C:\\Users\\adminlocal\\Desktop\\PSTools",
                                "fileSize": 716176,
                                "filePublisher": "Sysinternals - www.sysinternals.com",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
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
                            "createdDateTime": "2026-01-22T12:09:44.51Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 11624,
                            "parentProcessId": 9112,
                            "processCommandLine": "\"PsExec.exe\" cmd.exe",
                            "processCreationDateTime": "2026-01-22T12:06:31.18227Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:05:36.24622Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "imageFile": {
                                "sha1": "3e2272b916da4be3c120d17490423230ab62c174",
                                "sha256": "078163d5c16f64caa5a14784323fd51451b8c831c73396b967b4e35e6879937b",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "PsExec.exe",
                                "filePath": "C:\\Users\\adminlocal\\Desktop\\PSTools",
                                "fileSize": 716176,
                                "filePublisher": "Sysinternals - www.sysinternals.com",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
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
                            "createdDateTime": "2026-01-22T12:09:44.94Z",
                            "verdict": "suspicious",
                            "remediationStatus": "active",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "processId": 11528,
                            "parentProcessId": 9112,
                            "processCommandLine": "\"PsExec.exe\" notepad.exe",
                            "processCreationDateTime": "2026-01-22T12:07:32.0888299Z",
                            "parentProcessCreationDateTime": "2026-01-22T12:05:36.24622Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "335b3ef544f5d3690b6c75c776dc3e52bb3485c4",
                            "imageFile": {
                                "sha1": "3e2272b916da4be3c120d17490423230ab62c174",
                                "sha256": "078163d5c16f64caa5a14784323fd51451b8c831c73396b967b4e35e6879937b",
                                "md5": null,
                                "sha256Ac": null,
                                "fileName": "PsExec.exe",
                                "filePath": "C:\\Users\\adminlocal\\Desktop\\PSTools",
                                "fileSize": 716176,
                                "filePublisher": "Sysinternals - www.sysinternals.com",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
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
                        }
                    ],
                    "additionalData": {}
                },
                {
                    "id": "ed639047114220050398_-1516486255",
                    "providerAlertId": "ed639047114220050398_-1516486255",
                    "incidentId": "29",
                    "status": "new",
                    "severity": "high",
                    "classification": "truePositive",
                    "determination": "multiStagedAttack",
                    "serviceSource": "microsoftDefenderForEndpoint",
                    "detectionSource": "customDetection",
                    "productName": "Microsoft Defender for Endpoint",
                    "detectorId": "7ca40821-69f3-473b-936a-7a3526e222fd",
                    "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "title": "Test",
                    "description": "Test",
                    "recommendedActions": "",
                    "category": "CommandAndControl",
                    "assignedTo": "admin@contoso.com",
                    "alertWebUrl": "https://security.microsoft.com/alerts/ed639047114220050398_-1516486255?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [],
                    "createdDateTime": "2026-01-22T20:43:42.1333333Z",
                    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2026-01-22T10:06:18.3378347Z",
                    "lastActivityDateTime": "2026-01-22T10:22:26.7842322Z",
                    "systemTags": [],
                    "alertPolicyId": null,
                    "investigationState": "unsupportedAlertType",
                    "comments": [],
                    "customDetails": {},
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2026-01-22T20:43:42.25Z",
                            "verdict": "suspicious",
                            "remediationStatus": "none",
                            "remediationStatusDetails": null,
                            "roles": [],
                            "detailedRoles": [],
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
                            "ipInterfaces": [],
                            "vmMetadata": null,
                            "loggedOnUsers": [
                                {
                                    "accountName": "adminlocal",
                                    "domainName": "W11PRO-TEST"
                                }
                            ],
                            "resourceAccessEvents": []
                        }
                    ],
                    "additionalData": {}
                }
            ]
        },
```
