---
title: "List policyDeletableItem objects"
description: "Get a list of the policyDeletableItem objects and their properties."
author: "*ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List policyDeletableItem objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [policyDeletableItem](../resources/policydeletableitem.md) objects and their properties, which might be one of the following deleted policy types:
- [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)
- [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)
- [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)
- [namedLocation](../resources/namedlocation.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-list-permissions.md)]

## HTTP request

List deleted **crossTenantAccessPolicyConfigurationPartner** objects:
<!-- {
  "blockType": "ignored"
}
-->
```HTTP
GET /policies/deletedItems/crossTenantPartners/
```

List deleted **crossTenantIdentitySyncPolicyPartner** objects:
<!-- {
  "blockType": "ignored"
}
-->
```HTTP
GET /policies/deletedItems/crossTenantSyncPolicyPartners/
```

List deleted **conditionalAccessPolicy** objects:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/deletedItems/policies
```

List deleted **namedLocation** objects:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET identity/conditionalAccess/deletedItems/namedLocations
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [policyDeletableItem](../resources/policydeletableitem.md) objects in the response body.

## Examples

### Example 1: Get deleted crossTenantAccessPolicyConfigurationPartner objects

#### Request

The following example shows a request for crossTenantAccessPolicyConfigurationPartner.
<!-- {
  "blockType": "request",
  "name": "list_policydeletableitem_crossTenantAccessPolicyConfigurationPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners/
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#policies/deletedItems/crossTenantPartners",
  "value": [
    {
      "tenantId": "01d0e717-bc90-46ba-94a9-71b4a811fddb",
      "deletedDateTime": "2025-06-18T22:58:04Z",
      "displayName": null,
      "isServiceProvider": null,
      "isInMultiTenantOrganization": false,
      "blockServiceProviderOutboundAccess": null,
      "inboundTrust": null,
      "b2bCollaborationOutbound": null,
      "b2bCollaborationInbound": null,
      "b2bDirectConnectOutbound": null,
      "b2bDirectConnectInbound": null,
      "tenantRestrictions": null,
      "invitationRedemptionIdentityProviderConfiguration": null,
      "crossCloudMeetingConfiguration": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "automaticUserConsentSettings": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "protectedContentSharing": {
        "inboundAllowed": null,
        "outboundAllowed": null
      }
    },
    {
      "tenantId": "809cbbd2-2325-4c17-bd51-f8f098db19c8",
      "deletedDateTime": "2025-06-18T22:53:31Z",
      "displayName": null,
      "isServiceProvider": null,
      "isInMultiTenantOrganization": false,
      "blockServiceProviderOutboundAccess": null,
      "inboundTrust": null,
      "b2bCollaborationOutbound": null,
      "b2bCollaborationInbound": null,
      "b2bDirectConnectOutbound": null,
      "b2bDirectConnectInbound": null,
      "tenantRestrictions": null,
      "invitationRedemptionIdentityProviderConfiguration": null,
      "crossCloudMeetingConfiguration": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "automaticUserConsentSettings": {
        "inboundAllowed": null,
        "outboundAllowed": null
      },
      "protectedContentSharing": {
        "inboundAllowed": null,
        "outboundAllowed": null
      }
    }
  ]
}
```


### Example 2: Get deleted crossTenantIdentitySyncPolicyPartner objects

#### Request

The following example shows a request for crossTenantIdentitySyncPolicyPartner.
<!-- {
  "blockType": "request",
  "name": "list_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/policies/deletedItems/crossTenantSyncPolicyPartners/
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#policies/deletedItems/crossTenantSyncPolicyPartners",
  "value": [
    {
      "tenantId": "01d0e717-bc90-46ba-94a9-71b4a811fddb",
      "displayName": null,
      "deletedDateTime": "2025-06-18T23:11:01Z",
      "externalCloudAuthorizedApplicationId": null,
      "userSyncInbound": null
    }
  ]
}
```

### Example 3: Get deleted conditionalAccessPolicy objects

#### Request

The following example shows a request for a conditionalAccessPolicy.
<!-- {
  "blockType": "request",
  "name": "get_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/policies
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
  HTTP/1.1 200 OK 
{
    "@odata.nextLink": "https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/policies?$skiptoken=RFNwdAIAAQAAAA86MjExNTIwQFRDUy5jb20pVXNlcl84MDhmMDYzYy04MTk4LTQ4N2UtOTlkNC1hM2FmNjg0NjRjNzW5AAAAAAAAAAAAAA",
    "value": [
      {
        "id": "4fa582af-f900-495c-9772-ccf34d5a95fc",
        "deletedDateTime": "2024-08-15T04:59:43.250386Z",
        ... // Rest of the properties defined for the microsoft.graph.conditionalAccessPolicy entity
      }
    ]
}
```

### Example 4: Get deleted namedLocation objects

#### Request

The following example shows a request for a conditionalAccessPolicy.
<!-- {
  "blockType": "request",
  "name": "get_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/namedLocations
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
  HTTP/1.1 200 OK 
{
    "@odata.nextLink": "https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/namedLocations?$skiptoken=RFNwdAIAAQAAAA86MjExNTIwQFRDUy5jb20pVXNlcl84MDhmMDYzYy04MTk4LTQ4N2UtOTlkNC1hM2FmNjg0NjRjNzW5AAAAAAAAAAAAAA",
    "value": [
      {
        "id": "b5b69bc9-3e36-4fa0-bc7f-f0e5fd3aebf1",
        "deletedDateTime": "2024-08-15T04:59:43.250386Z",
        ... // Rest of the properties defined for the microsoft.graph.namedLocation entity
      }
    ]
}
```

