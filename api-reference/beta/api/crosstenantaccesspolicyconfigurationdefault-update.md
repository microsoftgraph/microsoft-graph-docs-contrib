---
title: "Update crossTenantAccessPolicyConfigurationDefault"
description: "Update the default configuration of a cross tenant access policy."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update crossTenantAccessPolicyConfigurationDefault

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [default configuration](../resources/crosstenantaccesspolicyconfigurationdefault.md) of a cross tenant access policy.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not applicable|
|Application|Policy.ReadWrite.CrossTenantAccess|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /policies/crossTenantAccessPolicy/default
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) object.

The following table shows the properties that are required when you update the [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md).

|Property|Type|Description|
|:---|:---|:---|
|inboundTrust|[crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|Determines the default configuration for trusting other conditional access claims from external Azure Active Directory organizations. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bCollaborationInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users from other organizations accessing your resources via B2B collaboration. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bCollaborationOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users in your organization going outbound to access resources in another organization via B2B collaboration. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bDirectConnectInbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users from other organizations accessing your resources via B2B direct connect. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|
|b2bDirectConnectOutbound|[crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|Defines your default configuration for users in your organization going outbound to access resources in another organization via B2B direct connect. Inherited from [crossTenantAccessPolicyConfigurationBase](../resources/crosstenantaccesspolicyconfigurationbase.md).|

## Response

If successful, this method returns a `200 OK` response code and an updated [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesspolicyconfigurationdefault"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default
Content-Type: application/json

{
  "b2bCollaborationOutbound": 
  {
    "usersAndGroups": 
    {
      "accessType": blocked,
      "targets": [
        {
          "target" : "0be493dc-cb56-4a53-936f-9cf64410b8b0",
          "targetType: "group"
        }
      ]
    },
    "applications": [
    {
      "accessType": blocked,
      "targets": [
          {
            "target" : "AllApplications",
            "targetType: "application"
          }
        ]
      ]
    }
}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
