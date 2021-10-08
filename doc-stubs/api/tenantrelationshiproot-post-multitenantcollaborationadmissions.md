---
title: "Create multiTenantCollaborationAdmission"
description: "Create a new multiTenantCollaborationAdmission object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create multiTenantCollaborationAdmission
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new multiTenantCollaborationAdmission object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /tenantRelationships/multiTenantCollaborationAdmissions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md) object.

The following table shows the properties that are required when you create the [multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|admissionExpirationDateTime|DateTimeOffset|**TODO: Add Description**|
|admitterDisplayName|String|**TODO: Add Description**|
|admissionState|multiTenantCollaborationMemberState|**TODO: Add Description**. The possible values are: `prospective`, `admitted`, `joined`, `declined`, `unknownFutureValue`.|
|admitterTenantId|Guid|**TODO: Add Description**|
|joinedMembers|[Microsoft.DirectoryServices.multiTenantCollaborationAdmissionJoinedMember](../resources/multitenantcollaborationadmissionjoinedmember.md) collection|**TODO: Add Description**|
|multiTenantCollaborationDisplayName|String|**TODO: Add Description**|
|multiTenantCollaborationDescription|String|**TODO: Add Description**|
|verificationDomain|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [multiTenantCollaborationAdmission](../resources/multitenantcollaborationadmission.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_multitenantcollaborationadmission_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/multiTenantCollaborationAdmissions
Content-Type: application/json
Content-length: 508

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantCollaborationAdmission",
  "admissionExpirationDateTime": "String (timestamp)",
  "admitterDisplayName": "String",
  "admissionState": "String",
  "admitterTenantId": "Guid",
  "joinedMembers": [
    {
      "@odata.type": "microsoft.graph.multiTenantCollaborationAdmissionJoinedMember"
    }
  ],
  "multiTenantCollaborationDisplayName": "String",
  "multiTenantCollaborationDescription": "String",
  "verificationDomain": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.multiTenantCollaborationAdmission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.multiTenantCollaborationAdmission",
  "id": "c572ad9c-ad9c-c572-9cad-72c59cad72c5",
  "admissionExpirationDateTime": "String (timestamp)",
  "admitterDisplayName": "String",
  "admissionState": "String",
  "admitterTenantId": "Guid",
  "joinedMembers": [
    {
      "@odata.type": "microsoft.graph.multiTenantCollaborationAdmissionJoinedMember"
    }
  ],
  "multiTenantCollaborationDisplayName": "String",
  "multiTenantCollaborationDescription": "String",
  "verificationDomain": "String"
}
```

