---
title: "Create b2bManagementPolicy"
description: "Create a new b2bManagementPolicy object."
author: "akshukla"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Create b2bManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "policyroot_post_b2bmanagementpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-post-b2bmanagementpolicies-permissions.md)]

[!INCLUDE [rbac-b2bmanagementpolicy-apis-write](../includes/rbac-for-apis/rbac-b2bmanagementpolicy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/b2bManagementPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) object.

You can specify the following properties when creating a **b2bManagementPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset| Date and Time when the policy object was deleted. Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|definition|String collection| A string collection containing a JSON string that defines the rules and settings for a policy. Inherited from [stsPolicy](../resources/stspolicy.md). Required.|
|description|String| Description for this policy. Inherited from [policyBase](../resources/policybase.md). Required.|
|displayName|String| Display name for this policy. Inherited from [policyBase](../resources/policybase.md). Required.|
|isOrganizationDefault|Boolean| If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Inherited from [stsPolicy](../resources/stspolicy.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_b2bmanagementpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/b2bManagementPolicies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.b2bManagementPolicy",
  "deletedDateTime": null,
  "description": "Policy used for B2B features",
  "displayName": "Policy1",
  "definition": [
    "{
      'B2BManagementPolicy':{
        'version':1,
        'invitationsAllowedAndBlocked':{
                        'AllowedDomains': ['microsoft.com', 'live.com'],
                        'BlockedDomains': ['bing.com']
                    }
        }
    }"
  ],
  "isOrganizationDefault": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.b2bManagementPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.b2bManagementPolicy",
  "id": "f596ef0d-42f9-0359-1aaa-12d02b38802a",
  "deletedDateTime": null,
  "description": "Policy used for B2B features",
  "displayName": "Policy1",
  "definition": [
    "{
      'B2BManagementPolicy':{
        'version':1,
        'invitationsAllowedAndBlocked':{
                        'AllowedDomains': ['microsoft.com', 'live.com'],
                        'BlockedDomains': ['bing.com']
                    }
        }
    }"
  ],
  "isOrganizationDefault": true
}
```

