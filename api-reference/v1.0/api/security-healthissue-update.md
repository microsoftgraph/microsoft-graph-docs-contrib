title: "Update healthIssue"
description: "Update the properties of a microsoft.graph.security.healthIssue object."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update healthIssue

Namespace: microsoft.graph.security



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


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the health issue. Required.|
|healthIssueType|microsoft.graph.security.healthIssueType|The type of the health issue. The possible values are: `sensor`, `global`, `unknownFutureValue`. Optional.|
|issueTypeId|String|The type identifier of the health issue. You can find a comprehensive list of all health issues and their identifiers at the following link: https://go.microsoft.com/fwlink/?linkid=2245397. Optional.|
|severity|microsoft.graph.security.healthIssueSeverity| The severity of the health issue. The possible values are: `low`, `medium`, `high`, `unknownFutureValue`. Optional.|
|status|microsoft.graph.security.healthIssueStatus|The status of the health issue. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`. Optional.|
|createdDateTime|DateTimeOffset|The date and time of when the health issue was generated.|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the health issue was last updated. Required.|
|domainNames|String collection|List of the fully qualified domain name of the domains or the sensors the health issue is realated to. Optional.|
|sensorDNSNames|String collection|List of the dns names of the sensors the health issue is realated to. Optional.|
|description|String|More detailed information on the health issue. Required.|
|recommendations|String collection|This field contains a list of recommended actions that can be taken to resolve the issue. These actions may include instructions on how to investigate the issue further, and they are not limited to pre-written responses. The recommended actions are intended to provide guidance on how to address the issue effectively and efficiently. Required.|
|recommendedActionCommands|String collection|This field may contain a list of commands from the product's PowerShell Module that can be used to resolve the issue, if available. If there are no commands that can be used to solve the issue, the field will be left empty. The commands, if present, are intended to provide a quick and efficient way to address the issue. These commands will be executed in order for the single recommended fix. Required.|
|additionalInformation|String collection|Additional information on the issue, such as a list of items to fix. Required.|



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
PATCH https://graph.microsoft.com/v1.0/security/identities/healthIssues/{healthIssueId}
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