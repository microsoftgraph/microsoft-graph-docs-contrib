---
title: "Update updatePolicy"
description: "Update the properties of an updatePolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update updatePolicy
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [updatePolicy](../resources/windowsupdates-updatepolicy.md) object.

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
PATCH /admin/windows/updates/updatePolicies/{updatePolicyId}
PATCH /admin/windows/updates/updatePolicies/{updatePolicyId}/complianceChanges/{complianceChangeId}/updatePolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|complianceChangeRules|[microsoft.graph.windowsUpdates.complianceChangeRule](../resources/windowsupdates-compliancechangerule.md) collection|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|deploymentSettings|[microsoft.graph.windowsUpdates.deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|**TODO: Add Description** Optional.|
|autoEnrollmentUpdateCategories|updateCategory collection|**TODO: Add Description**. The possible values are: `feature`, `quality`, `unknownFutureValue`, `driver`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `driver`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [updatePolicy](../resources/windowsupdates-updatepolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_updatepolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/{updatePolicyId}
Content-Type: application/json
Content-length: 358

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
  "complianceChangeRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.contentApprovalRule"
    }
  ],
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  },
  "autoEnrollmentUpdateCategories": [
    "String"
  ]
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
  "id": "a7aa99c1-34a2-850c-5223-7816fde70713",
  "complianceChangeRules": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.contentApprovalRule"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "deploymentSettings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  },
  "autoEnrollmentUpdateCategories": [
    "String"
  ]
}
```

