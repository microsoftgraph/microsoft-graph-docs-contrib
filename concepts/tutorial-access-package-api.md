---
title: "Manage access to resources using the entitlement management APIs"
description: "Learn how to use Microsoft Graph APIs to create a package of resources that internal users can request themselves."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Mark.Wahl
ms.topic: tutorial
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.date: 03/26/2024
#Customer intent: As a developer integrating with Microsoft Graph, I want to understand how to use entitlement management APIs to manage access to resources.
---

# Manage access to resources using the entitlement management APIs

Microsoft Entra entitlement management allows you to manage access to resources that employees need to be productive. In this tutorial, you use the entitlement management APIs to create a package of resources that internal users request themselves. The APIs are the programmatic alternative for creating custom apps instead of using the Microsoft Entra admin center.

In this tutorial, you learn how to:

> [!div class="checklist"]
> * Create an access package that users can self-service request.
> * Assign a group resource to the access package.
> * Request an access package

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

- A working Microsoft Entra tenant with a Microsoft Entra ID P2 or Microsoft Entra ID Governance license enabled. Either of these licenses are sufficient for the capabilities in this tutorial.
- A test guest account and a test security group in your tenant. The security group is the resource in this tutorial. Be sure to be either the owner of the group or assigned the *Groups Administrator* role. In this tutorial:
  - The user has the ID `007d1c7e-7fa8-4e33-b678-5e437acdcddc` and is named `Requestor1`.
    - [Optional] Open a new anonymous browser window. You sign in later in this tutorial.
  - The group has the ID `f4892fac-e81c-4712-bdf2-a4450008a4b0` with the "Marketing group" description and "Marketing resources" display name.
- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) with an account that has at least the *Identity Governance Administrator* role.
- Grant yourself the following delegated permissions: `User.ReadWrite.All`, `Group.ReadWrite.All`, and `EntitlementManagement.ReadWrite.All`.

> [!NOTE]
> Some steps in this tutorial use the `beta` endpoint.

## Step 1: Add resources to a catalog and create an access package

An *access package* is a bundle of resources that a team or project needs and is governed with policies. Access packages are defined in containers called catalogs. Catalogs can reference resources, such as groups, apps, and sites, that are used in the access package. Entitlement management includes a default `General` catalog.

In this step, you create a **Marketing Campaign** access package in the General catalog.

### Step 1.1: Get the identifier for the General catalog

First, get the ID of the catalog to which you want to add resources.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackagecatalog"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs?$filter=(displayName eq 'General')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-entitlementmanagement-get-accesspackagecatalog-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageCatalog"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/entitlementManagement/catalogs?$select=catalogType,createdDateTime",
    "value": [
        {
            "id": "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
            "displayName": "General",
            "description": "Built-in catalog.",
            "catalogType": "serviceDefault",
            "state": "published",
            "isExternallyVisible": true,
            "createdDateTime": "2023-04-13T14:43:19.44Z",
            "modifiedDateTime": "2023-04-13T14:43:19.44Z"
        }
    ]
}
```

### Step 1.2: Add the group to the catalog

In this tutorial, the resource is a security group has the ID `e93e24d1-2b65-4a6c-a1dd-654a12225487`.

To add the group that you created to the catalog, provide the following property values:
- **catalogId** - the **id** of the catalog that you're using
- **originId** - the **id** of the group that you created

If you're not the owner of the group that you reference in **originId** or aren't assigned the *Groups Administrator* role, then this request fails with a `403 Forbidden` error code.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageresourcerequest"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/resourceRequests
Content-type: application/json

{
  "catalogId":"cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
  "requestType": "AdminAdd",
  "justification": "",
  "accessPackageResource": {
    "resourceType": "AadGroup",
    "originId": "e93e24d1-2b65-4a6c-a1dd-654a12225487",
    "originSystem": "AadGroup"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-entitlementmanagement-get-accesspackageresourcerequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

In this response, the **id** represents the ID for the group as a resource in the General catalog. This ID isn't the group ID. Record this ID. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRequest"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/resourceRequests/$entity",
    "id": "44e521e0-fb6b-4d5e-a282-e7e68dc59493",
    "requestType": "AdminAdd",
    "requestState": "Delivered",
    "requestStatus": "Fulfilled",
    "catalogId": "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
    "executeImmediately": false,
    "justification": "",
    "expirationDateTime": null
}
```

### Step 1.3: Get catalog resources

In this step, you retrieve the details of the resources that match the ID of the group resource that you added to the General catalog.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageresources"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/cec5d6ab-c75d-47c0-9c1c-92e89f66e384/resources?$filter=originId eq 'e93e24d1-2b65-4a6c-a1dd-654a12225487'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-entitlementmanagement-get-accesspackageresources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-entitlementmanagement-get-accesspackageresources-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-entitlementmanagement-get-accesspackageresources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-entitlementmanagement-get-accesspackageresources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-entitlementmanagement-get-accesspackageresources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-entitlementmanagement-get-accesspackageresources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-entitlementmanagement-get-accesspackageresources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-entitlementmanagement-get-accesspackageresources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResource"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs('cec5d6ab-c75d-47c0-9c1c-92e89f66e384')/resources",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/entitlementManagement/catalogs('<guid>')/resources?$select=attributes,createdDateTime",
  "value": [
    {
      "id": "4a1e21c5-8a76-4578-acb1-641160e076e8",
      "displayName": "Marketing resources",
      "description": "Marketing group",
      "originId": "e93e24d1-2b65-4a6c-a1dd-654a12225487",
      "originSystem": "AadGroup",
      "createdDateTime": "2024-03-26T09:44:50.527Z",
      "attributes": []
    }
  ]
}
```

### Step 1.4: Get resources roles

The access package assigns users to the roles of a resource. The typical role of a group is the `Member` role. Other resources, such as SharePoint Online sites and applications, might have many roles. The typical role of a group used in an access package is the `Member` role. You need the member role to add a resource role to the access package later in this tutorial.

In the request, use the **id** of the catalog and the **id** of the group resource in the catalog that you recorded to get the **originId** of the Member resource role. Record the value of the **originId** property to use later in this tutorial.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageresourceroles"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/ede67938-cda7-4127-a9ca-7c7bf86a19b7/resourceRoles?$filter=(originSystem eq 'AadGroup' and displayName eq 'Member' and resource/id eq '274a1e21c5-8a76-4578-acb1-641160e076e')&$expand=resource
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-entitlementmanagement-get-accesspackageresourceroles-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Because you filtered by the originId, display name and resource ID, if successful, a single value is returned, which represents the Member role of that group. If no roles are returned, check the **id** values of the catalog and the access package resource.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRole"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs('ede67938-cda7-4127-a9ca-7c7bf86a19b7')/resourceRoles(resource())",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/entitlementManagement/catalogs('<guid>')/resourceRoles?$select=description,displayName",
    "value": [
        {
            "id": "00000000-0000-0000-0000-000000000000",
            "displayName": "Member",
            "description": null,
            "originSystem": "AadGroup",
            "originId": "Member_e93e24d1-2b65-4a6c-a1dd-654a12225487",
            "resource@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/catalogs('ede67938-cda7-4127-a9ca-7c7bf86a19b7')/resourceRoles('00000000-0000-0000-0000-000000000000')/resource/$entity",
            "resource": {
                "id": "ec09e90e-e021-4599-a8c3-bce77c2b2000",
                "displayName": "Marketing resources",
                "description": "Marketing group",
                "originId": "e93e24d1-2b65-4a6c-a1dd-654a12225487",
                "originSystem": "AadGroup",
                "createdDateTime": "2023-04-13T14:43:21.43Z",
                "attributes": []
            }
        }
    ]
}
```

### Step 1.5: Create the access package

You now have a catalog with a group resource, and you want to use the resource role of group member in the access package. The next step is to create the access package. After you have the access package, you can add the resource role to it, and create a policy for how users can request access to that resource role. You use the **id** of the catalog that you recorded earlier to create the access package. Record the **id** of the access package to use later in this tutorial.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_create_accesspackage"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages
Content-type: application/json

{
  "catalogId": "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
  "displayName": "Marketing Campaign",
  "description": "Access to resources for the campaign"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-entitlementmanagement-create-accesspackage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-entitlementmanagement-create-accesspackage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-entitlementmanagement-create-accesspackage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-entitlementmanagement-create-accesspackage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-entitlementmanagement-create-accesspackage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-entitlementmanagement-create-accesspackage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-entitlementmanagement-create-accesspackage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-entitlementmanagement-create-accesspackage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackage"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackages/$entity",
    "id": "88203d16-0e31-41d4-87b2-dd402f1435e9",
    "catalogId": "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
    "displayName": "Marketing Campaign",
    "description": "Access to resources for the campaign",
    "isHidden": false,
    "isRoleScopesVisible": false,
    "createdBy": "admin@contoso.com",
    "createdDateTime": "2024-03-26T17:36:45.411033Z",
    "modifiedBy": "admin@contoso.com",
    "modifiedDateTime": "2024-03-26T17:36:45.411033Z"
}
```

### Step 1.6: Add a resource role to the access package

#### Request

<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageresourcerolescope"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/88203d16-0e31-41d4-87b2-dd402f1435e9/accessPackageResourceRoleScopes
Content-type: application/json

{
  "role": {
    "originId":"Member_f4892fac-e81c-4712-bdf2-a4450008a4b0",
    "displayName":"Member",
    "originSystem":"AadGroup",
    "resource": {
      "id":"4a1e21c5-8a76-4578-acb1-641160e076e8",
      "resourceType":"Security Group",
      "originId":"f4892fac-e81c-4712-bdf2-a4450008a4b0",
      "originSystem":"AadGroup"
    }
  },
  "scope": {
    "originId":"f4892fac-e81c-4712-bdf2-a4450008a4b0",
    "originSystem":"AadGroup"
  }
}
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackages('88203d16-0e31-41d4-87b2-dd402f1435e9')/accessPackageResourceRoleScopes/$entity",
  "id": "e081321b-2802-4834-a6ca-6f598ce3cdf7_6dbd2209-9d14-4c76-b92b-fcb00e835fe1",
  "createdDateTime": "2024-03-26T19:56:00.6320729Z",
}
```

The access package now has one resource role, which is group membership. The role is assigned to any user who has the access package.

### Step 1.7: Create an access package policy

Now that you created the access package and added resources and roles, you can decide who can access it by creating an access package policy. In this tutorial, you enable the **Requestor1** account that you created to request access to the resources in the access package. For this task, you need these values:
- **id** of the access package for the value of the **accessPackageId** property
- **id** of the **Requestor1** user account for the value of the **id** property in **allowedRequestors**

The value of the **durationInDays** property enables the **Requestor1** account to access the resources in the access package for up to 30 days. Record the value of the **id** property that is returned to use later in this tutorial.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageassignmentpolicy"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies
Content-type: application/json

{
  "accessPackageId": "88203d16-0e31-41d4-87b2-dd402f1435e9",
  "displayName": "Specific users",
  "description": "Specific users can request assignment",
  "accessReviewSettings": null,
  "durationInDays": 30,
  "requestorSettings": {
    "scopeType": "SpecificDirectorySubjects",
    "acceptRequests": true,
    "allowedRequestors": [
       {
         "@odata.type": "#microsoft.graph.singleUser",
         "isBackup": false,
         "id": "007d1c7e-7fa8-4e33-b678-5e437acdcddc",
         "description": "Requestor1"
       }
    ]
  },
  "requestApprovalSettings": {
    "isApprovalRequired": false,
    "isApprovalRequiredForExtension": false,
    "isRequestorJustificationRequired": false,
    "approvalMode": "NoApproval",
    "approvalStages": []
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-get-accesspackageassignmentpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignmentPolicies/$entity",
  "id": "db440482-1210-4a60-9b55-3ac7a72f63ba",
  "accessPackageId": "88203d16-0e31-41d4-87b2-dd402f1435e9",
  "displayName": "Specific users",
  "description": "Specific users can request assignment",
  "canExtend": false,
  "durationInDays": 30,
  "expirationDateTime": null,
  "createdBy": "admin@contoso.com",
  "createdDateTime": "2020-06-29T19:47:44.7399675Z",
  "modifiedBy": "admin@contoso.com",
  "modifiedDateTime": "2020-06-29T19:47:44.7555489Z",
  "accessReviewSettings": null,
  "requestorSettings": {
    "scopeType": "SpecificDirectorySubjects",
    "acceptRequests": true,
    "allowedRequestors": [
      {
        "@odata.type": "#microsoft.graph.singleUser",
        "isBackup": false,
        "id": "007d1c7e-7fa8-4e33-b678-5e437acdcddc",
        "description": "Requestor1"
      }
    ]
  },
  "requestApprovalSettings": {
    "isApprovalRequired": false,
    "isApprovalRequiredForExtension": false,
    "isRequestorJustificationRequired": false,
    "approvalMode": "NoApproval",
    "approvalStages": []
  }
}
```

## Step 2: Request access

In this step, the **Requestor1** user account requests access to the resources in the access package.

To request access to resources in the access package, you need to provide these values:
- **id** of the **Requestor1** user account that you created for the value of the **targetId** property
- **id** of the assignment policy for the value of the **assignmentPolicyId** property
- **id** of the access package for the value of **accessPackageId** property

In the response, the status is `Accepted` and a state is `Submitted`. Record the value of the **id** property that is returned to get the status of the request later.

Start a new anonymous browser session, and sign in **Requestor1**. By doing so, you don't interrupt your current administrator session. Alternatively, you can interrupt your current administrator session by logging out of Graph Explorer and logging back in as **Requestor1**

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_create_accesspackageassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
Content-type: application/json

{
  "requestType": "UserAdd",
  "accessPackageAssignment":{
     "targetId":"007d1c7e-7fa8-4e33-b678-5e437acdcddc",
     "assignmentPolicyId":"db440482-1210-4a60-9b55-3ac7a72f63ba",
     "accessPackageId":"88203d16-0e31-41d4-87b2-dd402f1435e9"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-create-accesspackageassignmentrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignmentRequests/$entity",
    "createdDateTime": null,
    "completedDate": null,
    "id": "a6bb6942-3ae1-4259-9908-0133aaee9377",
    "requestType": "UserAdd",
    "requestState": "Submitted",
    "requestStatus": "Accepted",
    "isValidationOnly": false,
    "expirationDateTime": null,
    "justification": null
}
```

You can now sign out and exit the anonymous session.

## Step 3: Validate that access has been assigned

In this step, you confirm that the **Requestor1** user account was assigned the access package and that they're now a member of the **Marketing resources** group. Return to the administrator session in Graph Explorer.

### Step 3.1: Get the status of the request

Use the value of the **id** property of the request to get the current status of it. In the response, you can see the status changed to **Fulfilled** and the state changed to **Delivered**.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageassignmentrequest"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/a6bb6942-3ae1-4259-9908-0133aaee9377
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-get-accesspackageassignmentrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignmentRequests/$entity",
  "createdDateTime": "2020-06-29T20:24:24.683Z",
  "completedDate": "2020-06-29T20:24:47.937Z",
  "id": "a6bb6942-3ae1-4259-9908-0133aaee9377",
  "requestType": "UserAdd",
  "requestState": "Delivered",
  "requestStatus": "FulfilledNotificationTriggered",
  "isValidationOnly": false,
  "expirationDateTime": null,
  "justification": null
}
```

### Step 3.2: Get access package assignments

You can also use the **id** of the access package policy that you created to see that resources have been assigned to the **Requestor1** user account.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_accesspackageassignment"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignments?$filter=accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'&$expand=target,accessPackageAssignmentResourceRoles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-get-accesspackageassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-get-accesspackageassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-get-accesspackageassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-get-accesspackageassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-get-accesspackageassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-get-accesspackageassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-get-accesspackageassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-get-accesspackageassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignment"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignments",
  "value": [
    {
      "id": "a6bb6942-3ae1-4259-9908-0133aaee9377",
      "catalogId": "cec5d6ab-c75d-47c0-9c1c-92e89f66e384",
      "accessPackageId": "88203d16-0e31-41d4-87b2-dd402f1435e9",
      "assignmentPolicyId": "db440482-1210-4a60-9b55-3ac7a72f63ba",
      "targetId": "2bc42425-6dc5-4f2a-9ebb-7a7464481eb0",
      "assignmentStatus": "Delivered",
      "assignmentState": "Delivered",
      "isExtended": false,
      "expiredDateTime": null,
      "target": {
         "id": "8586ddc8-0ff7-4c24-9c79-f192bc3566e3",
         "objectId": "2bc42425-6dc5-4f2a-9ebb-7a7464481eb0"
      },
      "accessPackageAssignmentResourceRoles": [
         {
            "id": "bdb7e0a0-a927-42ab-bf30-c5b5533dc54a",
            "originSystem": "AadGroup",
            "status": "Fulfilled"
         }
      ]
    }
  ]
}
```

### Step 3.3: Get the members of the group

After the request has been granted, you can use the **id** that you recorded for the **Marketing resources** group to see that the **Requestor1** user account has been added to it.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_get_group_members"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/f4892fac-e81c-4712-bdf2-a4450008a4b0/members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/tutorial-entitlementmanagement-get-group-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/tutorial-entitlementmanagement-get-group-members-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/tutorial-entitlementmanagement-get-group-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/tutorial-entitlementmanagement-get-group-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/tutorial-entitlementmanagement-get-group-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/tutorial-entitlementmanagement-get-group-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/tutorial-entitlementmanagement-get-group-members-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/tutorial-entitlementmanagement-get-group-members-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response:
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
} -->
```http
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "007d1c7e-7fa8-4e33-b678-5e437acdcddc",
      "deletedDateTime": null,
      "accountEnabled": true,
      "ageGroup": null,
      "businessPhones": [],
      "city": null,
      "createdDateTime": "2020-06-23T18:43:24Z",
      "creationType": null,
      "companyName": null,
      "consentProvidedForMinor": null,
      "country": null,
      "department": null,
      "displayName": "Requestor1",
      "employeeId": null,
      "faxNumber": null,
      "givenName": null,
      "imAddresses": [],
      "infoCatalogs": [],
      "isResourceAccount": null,
      "jobTitle": null,
      "legalAgeGroupClassification": null,
      "mail": null,
      "mailNickname": "Requestor1"
    }
  ]
}
```

## Step 4: Clean up resources

In this step, you remove the changes you made and delete the **Marketing Campaign** access package.

### Remove an access package assignment

You must remove any assignments to the access package before you can delete it. Use the **id** of the assignment request that you previously recorded to delete it.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_remove_accesspackageassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests
Content-type: application/json

{
  "requestType": "AdminRemove",
  "accessPackageAssignment":{
     "id": "a6bb6942-3ae1-4259-9908-0133aaee9377"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-remove-accesspackageassignmentrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest"
} -->
```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageAssignmentRequests/$entity",
    "createdDateTime": null,
    "completedDate": null,
    "id": "78eaee8c-e6cf-48c9-8f99-aae44c35e379",
    "requestType": "AdminRemove",
    "requestState": "Submitted",
    "requestStatus": "Accepted",
    "isValidationOnly": false,
    "expirationDateTime": null,
    "justification": null
}
```

### Delete the access package assignment policy

Use the **id** of the assignment policy that you previously recorded to delete it. Make sure all assignments are removed first. The request returns a `204 No Content` response code.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_delete_accesspackageassignmentpolicy"
}-->
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/6c1f65ec-8c25-4a45-83c2-a1de2a6d0e9f
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-delete-accesspackageassignmentpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Delete the access package

Use the **id** of the access package that you previously recorded to delete it. The request returns a `204 No Content` response code.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tutorial_entitlementmanagement_delete_accesspackage"
}-->
```http
DELETE https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/cf54c6ca-d717-49bc-babe-d140d035dfdd
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/tutorial-entitlementmanagement-delete-accesspackage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/tutorial-entitlementmanagement-delete-accesspackage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/tutorial-entitlementmanagement-delete-accesspackage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/tutorial-entitlementmanagement-delete-accesspackage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/tutorial-entitlementmanagement-delete-accesspackage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/tutorial-entitlementmanagement-delete-accesspackage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/tutorial-entitlementmanagement-delete-accesspackage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/tutorial-entitlementmanagement-delete-accesspackage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Conclusion

In this tutorial, the marketing campaign resources were membership in a single group, which could have access to other resources. The resources can also be a collection of groups, applications, or SharePoint Online sites.

The capabilities in this tutorial are supported in Microsoft Entra ID P2 or Microsoft Entra ID Governance licenses. However, other advanced entitlement management capabilities require additional licensing. For more information, see [Microsoft Entra ID Governance licensing fundamentals](/entra/id-governance/licensing-fundamentals).

## Related content

- [Working with the Microsoft Entra entitlement management APIs](/graph/api/resources/entitlementmanagement-overview)
