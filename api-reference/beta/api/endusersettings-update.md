---
title: "Update end user settings"
description: "Update the properties of an endUserSettings object."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 09/18/2025
---

# Update endUserSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [endUserSettings](../resources/endusersettings.md) object that controls the end user experience for access package suggestions and resource discovery.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "endusersettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/endusersettings-update-permissions.md)]

[!INCLUDE [rbac-entitlement-identity-governance-read](../includes/rbac-for-apis/rbac-entitlement-identity-governance-admin-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /identityGovernance/entitlementManagement/controlConfigurations/endUserSettings
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [endUserSettings](../resources/endusersettings.md) object.

The following table shows the properties that are required when you update the [endUserSettings](../resources/endusersettings.md).

|Property|Type|Description|
|:---|:---|:---|
|relatedPeopleInsightLevel|accessPackageSuggestionRelatedPeopleInsightLevel|The level of related people insights to show in access package suggestions. The possible values are: `disabled`, `count`, `countAndNames`, `unknownFutureValue`.|
|showApproverDetailsToMembers|Boolean|Indicates whether approver details are shown to members. When `true`, approver information is visible to members.|

## Response

If successful, this method returns a `200 OK` response code and an updated [endUserSettings](../resources/endusersettings.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_endusersettings"
}-->

```http
PUT https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/controlConfigurations/endUserSettings
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.endUserSettings",
  "relatedPeopleInsightLevel": "countAndNames",
  "showApproverDetailsToMembers": true
}
```


### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.endUserSettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/entitlementManagement/controlConfigurations/endUserSettings",
  "relatedPeopleInsightLevel": "countAndNames",
  "showApproverDetailsToMembers": true
}
```