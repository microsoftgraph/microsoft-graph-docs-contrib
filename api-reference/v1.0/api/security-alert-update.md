---
title: "Update alert"
description: "Update the properties of an alert object."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Update alert
Namespace: microsoft.graph

Update the properties of an [alert](../resources/security-alert.md) object in an organization based on the specified alert **id** property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SecurityAlert.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SecurityAlert.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/alerts_v2/{alertId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.security.alertStatus|The status of the alert. Possible values are: `new`, `inProgress`, `resolved`, `unknownFutureValue`.|
|classification|microsoft.graph.security.alertClassification|Specifies the classification of the alert. Possible values are: `unknown`, `falsePositive`, `truePositive`, `benignPositive`, `unknownFutureValue`.|
|determination|microsoft.graph.security.alertDetermination|Specifies the determination of the alert. Possible values are: `unknown`, `apt`, `malware`, `securityPersonnel`, `securityTesting`, `unwantedSoftware`, `other`, `multiStagedAttack`, `compromisedUser`, `phishing`, `maliciousUserActivity`, `clean`, `insufficientData`, `confirmedUserActivity`, `lineOfBusinessApplication`, `unknownFutureValue`.|
|assignedTo|String|Owner of the incident, or null if no owner is assigned.|


## Response

If successful, this method returns a `200 OK` response code and an updated [alert](../resources/security-alert.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["da637551227677560813_-961444813"],
  "name": "update_alert_v2"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/security/alerts_v2/da637551227677560813_-961444813
Content-Type: application/json
Content-length: 2450

{
    "assignedTo": "secAdmin@contoso.onmicrosoft.com",
    "classification": "truePositive",
    "determination": "malware",
    "status": "inProgress"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-alert-v2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-alert-v2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-alert-v2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-alert-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-alert-v2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-alert-v2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.alert",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.security.alert",
    "id": "da637551227677560813_-961444813",
    "providerAlertId": "da637551227677560813_-961444813",
    "incidentId": "28282",
    "status": "inProgress",
    "severity": "low",
    "classification": "truePositive",
    "determination": "malware",
    "serviceSource": "microsoftDefenderForEndpoint",
    "detectionSource": "antivirus",
    "detectorId": "e0da400f-affd-43ef-b1d5-afc2eb6f2756",
    "tenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "title": "Suspicious execution of hidden file",
    "description": "A hidden file has been launched. This activity could indicate a compromised host. Attackers often hide files associated with malicious tools to evade file system inspection and defenses.",
    "recommendedActions": "Collect artifacts and determine scope\n�\tReview the machine timeline for suspicious activities that may have occurred before and after the time of the alert, and record additional related artifacts (files, IPs/URLs) \n�\tLook for the presence of relevant artifacts on other systems. Identify commonalities and differences between potentially compromised systems.\n�\tSubmit relevant files for deep analysis and review resulting detailed behavioral information.\n�\tSubmit undetected files to the MMPC malware portal\n\nInitiate containment & mitigation \n�\tContact the user to verify intent and initiate local remediation actions as needed.\n�\tUpdate AV signatures and run a full scan. The scan might reveal and remove previously-undetected malware components.\n�\tEnsure that the machine has the latest security updates. In particular, ensure that you have installed the latest software, web browser, and Operating System versions.\n�\tIf credential theft is suspected, reset all relevant users passwords.\n�\tBlock communication with relevant URLs or IPs at the organization�s perimeter.",
    "category": "DefenseEvasion",
    "assignedTo": "secAdmin@contoso.onmicrosoft.com",
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
    "evidence": []
}
```
