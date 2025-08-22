---
title: "Create crossTenantAccessPolicyConfigurationPartner"
description: "Create a new crossTenantAccessPolicyConfigurationPartner object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create crossTenantAccessPolicyConfigurationPartner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new crossTenantAccessPolicyConfigurationPartner object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policydeletableroot-post-crosstenantpartners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableroot-post-crosstenantpartners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/deletedItems/crossTenantPartners
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) object.

You can specify the following properties when creating a **crossTenantAccessPolicyConfigurationPartner**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [policyDeletableItem](../resources/policydeletableitem.md). Optional.|
|tenantId|String|**TODO: Add Description** Required.|
|isServiceProvider|Boolean|**TODO: Add Description** Optional.|
|isInMultiTenantOrganization|Boolean|**TODO: Add Description** Optional.|
|inboundTrust|[crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|**TODO: Add Description** Optional.|
|b2bCollaborationOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|b2bCollaborationInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|b2bDirectConnectOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|b2bDirectConnectInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|tenantRestrictions|[crossTenantAccessPolicyTenantRestrictions](../resources/crosstenantaccesspolicytenantrestrictions.md)|**TODO: Add Description** Optional.|
|automaticUserConsentSettings|[inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_crosstenantaccesspolicyconfigurationpartner_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "deletedDateTime": "String (timestamp)",
  "tenantId": "167baaa6-c42b-034e-62f1-56480a366779",
  "isServiceProvider": "Boolean",
  "isInMultiTenantOrganization": "Boolean",
  "inboundTrust": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"
  },
  "b2bCollaborationOutbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bCollaborationInbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bDirectConnectOutbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bDirectConnectInbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "tenantRestrictions": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
  },
  "automaticUserConsentSettings": {
    "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationPartner"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "deletedDateTime": "String (timestamp)",
  "tenantId": "167baaa6-c42b-034e-62f1-56480a366779",
  "isServiceProvider": "Boolean",
  "isInMultiTenantOrganization": "Boolean",
  "inboundTrust": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"
  },
  "b2bCollaborationOutbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bCollaborationInbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bDirectConnectOutbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "b2bDirectConnectInbound": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
  },
  "tenantRestrictions": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
  },
  "automaticUserConsentSettings": {
    "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
  }
}
```

