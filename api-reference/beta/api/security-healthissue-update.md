---
title: "Update healthIssue"
description: "Update the properties of a microsoft.graph.security.healthIssue object."
author: "NaamaAlmog"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
ms.date: 03/20/2024
---

# Update healthIssue

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-healthissue-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-healthissue-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/identities/healthIssues/{healthIssueId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|healthIssueType|microsoft.graph.security.healthIssueType|**TODO: Add Description**. The possible values are: `sensor`, `global`, `unknownFutureValue`. Optional.|
|issueTypeId|String|**TODO: Add Description** Optional.|
|severity|microsoft.graph.security.healthIssueSeverity|**TODO: Add Description**. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`. Optional.|
|status|microsoft.graph.security.healthIssueStatus|**TODO: Add Description**. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`. Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|domainNames|String collection|**TODO: Add Description** Optional.|
|sensorDNSNames|String collection|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Required.|
|recommendations|String collection|**TODO: Add Description** Required.|
|recommendedActionCommands|String collection|**TODO: Add Description** Required.|
|additionalInformation|String collection|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_healthissue"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/healthIssues/{healthIssueId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "displayName": "String",
  "healthIssueType": "String",
  "issueTypeId": "String",
  "severity": "String",
  "status": "String",
  "domainNames": [
    "String"
  ],
  "sensorDNSNames": [
    "String"
  ],
  "description": "String",
  "recommendations": [
    "String"
  ],
  "recommendedActionCommands": [
    "String"
  ],
  "additionalInformation": [
    "String"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "id": "bf600aba-e975-0274-d332-c0f79dc75740",
  "displayName": "String",
  "healthIssueType": "String",
  "issueTypeId": "String",
  "severity": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "domainNames": [
    "String"
  ],
  "sensorDNSNames": [
    "String"
  ],
  "description": "String",
  "recommendations": [
    "String"
  ],
  "recommendedActionCommands": [
    "String"
  ],
  "additionalInformation": [
    "String"
  ]
}
```

