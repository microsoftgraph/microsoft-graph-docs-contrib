---
title: "List incidents"
description: "Get a list of the incident objects and their properties."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 09/19/2024
---

# List incidents
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
``` http
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
``` http
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
``` http
GET https://graph.microsoft.com/beta/security/incidents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-incident-for-defender-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-incident-for-defender-cli-snippets.md)]
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

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.security.incident",
            "id": "2972395",
            "incidentWebUrl": "https://security.microsoft.com/incidents/2972395?tid=12f988bf-16f1-11af-11ab-1d7cd011db47",
            "redirectIncidentId": null,
            "tenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
            "displayName": "Multi-stage incident involving Initial access & Command and control on multiple endpoints reported by multiple sources",
            "createdDateTime": "2021-08-13T08:43:35.5533333Z",
            "lastUpdateDateTime": "2021-09-30T09:35:45.1133333Z",
            "assignedTo": "KaiC@contoso.com",
            "classification": "TruePositive",
            "determination": "MultiStagedAttack",
            "status": "Active",
            "severity": "Medium",
            "customTags": [
                "Demo"
            ],
            "comments": [
                {
                    "comment": "Demo incident",
                    "createdBy": "DavidS@contoso.com",
                    "createdTime": "2021-09-30T12:07:37.2756993Z"
                }
            ],
            "systemTags": [
                "Defender Experts"
            ],
            "description": "Microsoft observed Raspberry Robin worm activity spreading through infected USB on multiple devices in your environment. From available intel, these infections could be a potential precursor activity to ransomware deployment. ...",
            "recommendedActions": "Immediate Recommendations: 1.    Block untrusted and unsigned processes that run from USB (ASR Rule) 2.    Verify if the ASR rule is turned on for the devices and evaluate whether the ASR . ...",
            "recommendedHuntingQueries": [
                {
                    "@odata.type": "#microsoft.graph.security.recommendedHuntingQuery",
                    "kqlText": "AlertInfo   | where Timestamp >= datetime(2022-10-20 06:00:52.9644915)   | where Title == 'Potential Raspberry Robin worm command'  | join AlertEvidence on AlertId   | distinct DeviceId"
                }
            ],
            "summary": "Defender Experts has identified some malicious activity. This incident has been raised for your awareness and should be investigated as normal."
        }
    ]
}
```

### Example 2: List all incidents with their alerts
#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_incident_with_theri_alerts"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidents?$expand=alerts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-incident-with-theri-alerts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-incident-with-theri-alerts-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-incident-with-theri-alerts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-incident-with-theri-alerts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-incident-with-theri-alerts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-incident-with-theri-alerts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-incident-with-theri-alerts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-incident-with-theri-alerts-python-snippets.md)]
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
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.security.incident",
            "id": "2972395",
            "incidentWebUrl": "https://security.microsoft.com/incidents/2972395?tid=12f988bf-16f1-11af-11ab-1d7cd011db47",
            "redirectIncidentId": null,
            "tenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
            "displayName": "Multi-stage incident involving Initial access & Command and control on multiple endpoints reported by multiple sources",
            "createdDateTime": "2021-08-13T08:43:35.5533333Z",
            "lastUpdateDateTime": "2021-09-30T09:35:45.1133333Z",
            "assignedTo": "KaiC@contoso.com",
            "classification": "truePositive",
            "determination": "multiStagedAttack",
            "status": "active",
            "severity": "medium",
            "tags": [
                "Demo"
            ],
            "comments": [
                {
                    "comment": "Demo incident",
                    "createdBy": "DavidS@contoso.com",
                    "createdTime": "2021-09-30T12:07:37.2756993Z"
                }
            ],
            "systemTags": [
                "Defender Experts"
            ],
            "description": "Microsoft observed Raspberry Robin worm activity spreading through infected USB on multiple devices in your environment. From available intel, these infections could be a potential precursor activity to ransomware deployment. ...",
            "recommendedActions": "Immediate Recommendations:  1.    Block untrusted and unsigned processes that run from USB (ASR Rule) 2.    Verify if the ASR rule is turned on for the devices and evaluate whether the ASR . ...",
            "recommendedHuntingQueries": [
                {
                    "@odata.type": "#microsoft.graph.security.recommendedHuntingQuery",
                    "kqlText": "//Run this query to identify the devices having Raspberry Robin worm alerts  AlertInfo   | where Timestamp >= datetime(2022-10-20 06:00:52.9644915)   | where Title == 'Potential Raspberry Robin worm command'  | join AlertEvidence on AlertId   | distinct DeviceId"
                }
            ],
            "alerts": [
                {
                    "@odata.type": "#microsoft.graph.security.alert",
                    "id": "da637551227677560813_-961444813",
                    "providerAlertId": "da637551227677560813_-961444813",
                    "incidentId": "28282",
                    "status": "new",
                    "severity": "low",
                    "classification": "unknown",
                    "determination": "unknown",
                    "serviceSource": "microsoftDefenderForEndpoint",
                    "detectionSource": "antivirus",
                    "detectorId": "e0da400f-affd-43ef-b1d5-afc2eb6f2756",
                    "tenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
                    "title": "Suspicious execution of hidden file",
                    "description": "A hidden file has been launched. This activity could indicate a compromised host. Attackers often hide files associated with malicious tools to evade file system inspection and defenses.",
                    "recommendedActions": "Collect artifacts and determine scope\n�\tReview the machine timeline for suspicious activities that may have occurred before and after the time of the alert, and record additional related artifacts (files, IPs/URLs) \n�\tLook for the presence of relevant artifacts on other systems. Identify commonalities and differences between potentially compromised systems.\n�\tSubmit relevant files for deep analysis and review resulting detailed behavioral information.\n�\tSubmit undetected files to the MMPC malware portal\n\nInitiate containment & mitigation \n�\tContact the user to verify intent and initiate local remediation actions as needed.\n�\tUpdate AV signatures and run a full scan. The scan might reveal and remove previously-undetected malware components.\n�\tEnsure that the machine has the latest security updates. In particular, ensure that you have installed the latest software, web browser, and Operating System versions.\n�\tIf credential theft is suspected, reset all relevant users passwords.\n�\tBlock communication with relevant URLs or IPs at the organization�s perimeter.",
                    "category": "DefenseEvasion",
                    "assignedTo": null,
                    "alertWebUrl": "https://security.microsoft.com/alerts/da637551227677560813_-961444813?tid=b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
                    "incidentWebUrl": "https://security.microsoft.com/incidents/28282?tid=b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
                    "actorDisplayName": null,
                    "threatDisplayName": null,
                    "threatFamilyName": null,
                    "mitreTechniques": [
                        "T1564.001"
                    ],
                    "createdDateTime": "2021-04-27T12:19:27.7211305Z",
                    "lastUpdateDateTime": "2021-05-02T14:19:01.3266667Z",
                    "resolvedDateTime": null,
                    "firstActivityDateTime": "2021-04-26T07:45:50.116Z",
                    "lastActivityDateTime": "2021-05-02T07:56:58.222Z",
                    "comments": [],
                    "evidence": [
                        {
                            "@odata.type": "#microsoft.graph.security.deviceEvidence",
                            "createdDateTime": "2021-04-27T12:19:27.7211305Z",
                            "verdict": "unknown",
                            "remediationStatus": "none",
                            "remediationStatusDetails": null,
                            "firstSeenDateTime": "2020-09-12T07:28:32.4321753Z",
                            "mdeDeviceId": "73e7e2de709dff64ef64b1d0c30e67fab63279db",
                            "azureAdDeviceId": null,
                            "deviceDnsName": "yonif-lap3.middleeast.corp.microsoft.com",
                            "hostName": "yonif-lap3",
                            "ntDomain": null,
                            "dnsDomain": "middleeast.corp.microsoft.com",
                            "osPlatform": "Windows10",
                            "osBuild": 22424,
                            "version": "Other",
                            "healthStatus": "active",
                            "riskScore": "medium",
                            "rbacGroupId": 75,
                            "rbacGroupName": "UnassignedGroup",
                            "onboardingStatus": "onboarded",
                            "defenderAvStatus": "unknown",
                            "ipInterfaces": [
                                "1.1.1.1"
                            ],
                            "loggedOnUsers": [],
                            "roles": [
                                "compromised"
                            ],
                            "detailedRoles": [
                                "Main device"
                            ],
                            "tags": [
                                "Test Machine"
                            ],
                            "vmMetadata": {
                                "vmId": "ca1b0d41-5a3b-4d95-b48b-f220aed11d78",
                                "cloudProvider": "azure",
                                "resourceId": "/subscriptions/8700d3a3-3bb7-4fbe-a090-488a1ad04161/resourceGroups/WdatpApi-EUS-STG/providers/Microsoft.Compute/virtualMachines/NirLaviTests",
                                "subscriptionId": "8700d3a3-3bb7-4fbe-a090-488a1ad04161"
                            }
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.fileEvidence",
                            "createdDateTime": "2021-04-27T12:19:27.7211305Z",
                            "verdict": "unknown",
                            "remediationStatus": "none",
                            "remediationStatusDetails": null,
                            "detectionStatus": "detected",
                            "mdeDeviceId": "73e7e2de709dff64ef64b1d0c30e67fab63279db",
                            "roles": [],
                            "detailedRoles": [
                                "Referred in command line"
                            ],
                            "tags": [],
                            "fileDetails": {
                                "sha1": "5f1e8acedc065031aad553b710838eb366cfee9a",
                                "sha256": "8963a19fb992ad9a76576c5638fd68292cffb9aaac29eb8285f9abf6196a7dec",
                                "fileName": "MsSense.exe",
                                "filePath": "C:\\Program Files\\temp",
                                "fileSize": 6136392,
                                "filePublisher": "Microsoft Corporation",
                                "signer": null,
                                "issuer": null
                            }
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.processEvidence",
                            "createdDateTime": "2021-04-27T12:19:27.7211305Z",
                            "verdict": "unknown",
                            "remediationStatus": "none",
                            "remediationStatusDetails": null,
                            "processId": 4780,
                            "parentProcessId": 668,
                            "processCommandLine": "\"MsSense.exe\"",
                            "processCreationDateTime": "2021-08-12T12:43:19.0772577Z",
                            "parentProcessCreationDateTime": "2021-08-12T07:39:09.0909239Z",
                            "detectionStatus": "detected",
                            "mdeDeviceId": "73e7e2de709dff64ef64b1d0c30e67fab63279db",
                            "roles": [],
                            "detailedRoles": [],
                            "tags": [],
                            "imageFile": {
                                "sha1": "5f1e8acedc065031aad553b710838eb366cfee9a",
                                "sha256": "8963a19fb992ad9a76576c5638fd68292cffb9aaac29eb8285f9abf6196a7dec",
                                "fileName": "MsSense.exe",
                                "filePath": "C:\\Program Files\\temp",
                                "fileSize": 6136392,
                                "filePublisher": "Microsoft Corporation",
                                "signer": null,
                                "issuer": null
                            },
                            "parentProcessImageFile": {
                                "sha1": null,
                                "sha256": null,
                                "fileName": "services.exe",
                                "filePath": "C:\\Windows\\System32",
                                "fileSize": 731744,
                                "filePublisher": "Microsoft Corporation",
                                "signer": null,
                                "issuer": null
                            },
                            "userAccount": {
                                "accountName": "SYSTEM",
                                "domainName": "NT AUTHORITY",
                                "userSid": "S-1-5-18",
                                "azureAdUserId": null,
                                "userPrincipalName": null
                            }
                        },
                        {
                            "@odata.type": "#microsoft.graph.security.registryKeyEvidence",
                            "createdDateTime": "2021-04-27T12:19:27.7211305Z",
                            "verdict": "unknown",
                            "remediationStatus": "none",
                            "remediationStatusDetails": null,
                            "registryKey": "SYSTEM\\CONTROLSET001\\CONTROL\\WMI\\AUTOLOGGER\\SENSEAUDITLOGGER",
                            "registryHive": "HKEY_LOCAL_MACHINE",
                            "roles": [],
                            "detailedRoles": [],
                            "tags": []
                        }
                    ]
                }
            ],
            "summary": "Defender Experts has identified some malicious activity. This incident has been raised for your awareness and should be investigated as normal."
        }
    ]
}
```
