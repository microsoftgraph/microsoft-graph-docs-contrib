---
title: "Create group"
description: "Create a new Microsoft 365 group or security group."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: high
ms.subservice: "entra-groups"
doc_type: apiPageType
ms.date: 09/12/2024
---

# Create group

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [group](../resources/group.md) as specified in the request body. You can create one of the following groups:

- Microsoft 365 group (unified group)
- Security group

This operation returns by default only a subset of the properties for each group. These default properties are noted in the [Properties](../resources/group.md#properties) section. To get properties that are _not_ returned by default, do a [GET operation](group-get.md) and specify the properties in a `$select` OData query option.

**Note**: To create a [team](../resources/team.md), first create a group then add a team to it, see [create team](../api/team-put-teams.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "group_post_groups" } -->
[!INCLUDE [permissions-table](../includes/permissions/group-post-groups-permissions.md)]

For an app create a group with owners or members while it has the *Group.Create* permission, the app must have the privileges to read the object type that it wants to assign as the group owner or member. Therefore:
+ The app can assign itself as the group's owner or member.
+ To create the group with users as owners or members, the app must have at least the *User.Read.All* permission.
+ To create the group with other service principals as owners or members, the app must have at least the *Application.Read.All* permission.
+ To create the group with either users or service principals as owners or members, the app must have at least the *Directory.Read.All* permission.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /groups
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [group](../resources/group.md) object.

The following table lists the properties that are required when you create the [group](../resources/group.md). Specify other writable properties as necessary for your group.

| Property        | Type    | Description                                                                                                                                                                                                                                                                                                                                |
| :-------------- | :------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| displayName     | string  | The name to display in the address book for the group. Maximum length is 256 characters. Required.                                                                                                                                                                                                                                         |
| mailEnabled     | Boolean | Set to `true` for mail-enabled groups. Required.                                                                                                                                                                                                                                                                                           |
| mailNickname    | string  | The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the [ASCII character set 0 - 127](/office/vba/language/reference/user-interface-help/character-set-0127) except the following: ` @ () \ [] " ; : <> , SPACE`. Required. |
| securityEnabled | Boolean | Set to `true` for security-enabled groups, including Microsoft 365 groups. Required. **Note:** Groups created using the Microsoft Entra admin center or the Azure portal always have **securityEnabled** initially set to `true`.                                                                                                                                    |

> [!IMPORTANT]
>
> - Creating a group using the **Group.Create** application permission without specifying owners creates the group anonymously and the group isn't modifiable. Add owners to the group while creating it so the owners can manage the group.
>
> - Creating a Microsoft 365 group in an app-only context and without specifying owners creates the group anonymously. Doing so can result in the associated SharePoint Online site not being created automatically until further manual action is taken.
> 
> - Creating a Microsoft 365 or security group in a delegated context, signed in as a non-admin user, and without specifying owners automatically adds the calling user as the group owner. An admin user is automatically added as the group owner of a Microsoft 365 group they create but not of a security group.
>
> - A non-admin user can't add themselves to the group owners collection. For more information, see the related [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=26419).
>
> - To following properties can't be set in the initial POST request and must be set in a subsequent PATCH request: **allowExternalSenders**, **autoSubscribeNewMembers**, **hideFromAddressLists**, **hideFromOutlookClients**, **isSubscribedByMail**, **unseenCount**.

Because the **group** resource supports [extensions](/graph/extensibility-overview), you can add custom properties with your own data to the group while creating it.

### groupTypes options

Use the **groupTypes** property to control the type of group and its membership, as shown.

| Type of group                     | Assigned membership | Dynamic membership                |
| :-------------------------------- | :------------------ | :-------------------------------- |
| Microsoft 365 (aka unified group) | `["Unified"]`       | `["Unified","DynamicMembership"]` |
| Dynamic                           | `[]` (_null_)       | `["DynamicMembership"]`           |

## Response

If successful, this method returns a `201 Created` response code and a [group](../resources/group.md) object in the response body. The response includes only the default properties of the group.

## Examples

### Example 1: Create a Microsoft 365 group

The following example creates a Microsoft 365 group. Because the owners have not been specified, the calling user is automatically added as the owner of the group.

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_group"
}-->

```http
POST https://graph.microsoft.com/beta/groups
Content-type: application/json

{
  "description": "Self help community for golf",
  "displayName": "Golf Assist",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "golfassist",
  "securityEnabled": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-group-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The value of the **preferredDataLocation** property is inherited from the group creator's preferred data location.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_group"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
     "id": "45b7d2e7-b882-4a80-ba97-10b7a63b8fa4",
     "deletedDateTime": null,
     "classification": null,
     "createdDateTime": "2018-12-22T02:21:05Z",
     "description": "Self help community for golf",
     "displayName": "Golf Assist",
     "expirationDateTime": null,
     "groupTypes": [
         "Unified"
     ],
   "isAssignableToRole": null,
     "mail": "golfassist@contoso.com",
     "mailEnabled": true,
     "mailNickname": "golfassist",
     "membershipRule": null,
     "membershipRuleProcessingState": null,
     "onPremisesLastSyncDateTime": null,
     "onPremisesSecurityIdentifier": null,
     "onPremisesSyncEnabled": null,
     "preferredDataLocation": "CAN",
     "preferredLanguage": null,
     "proxyAddresses": [
         "SMTP:golfassist@contoso.com"
     ],
     "renewedDateTime": "2018-12-22T02:21:05Z",
     "resourceBehaviorOptions": [],
     "resourceProvisioningOptions": [],
     "securityEnabled": false,
   "securityIdentifier": "S-1-12-1-1753967289-1089268234-832641959-555555555",
     "theme": null,
     "visibility": "Public",
     "onPremisesProvisioningErrors": []
}
```

### Example 2: Create a security group with an owner and members

The following example creates a security group with an owner and members specified. Note that a maximum of 20 relationships, such as owners and members, can be added as part of group creation. You can subsequently add more members by using the [add member](/graph/api/group-post-members?view=graph-rest-beta&preserve-view=true) API or JSON batching.

A non-admin user can't add themselves to the group owners collection. For more information, see the related [known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=26419).

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_prepopulated_group"
}-->

```http
POST https://graph.microsoft.com/beta/groups
Content-Type: application/json

{
  "description": "Group with designated owner and members",
  "displayName": "Operations group",
  "groupTypes": [
  ],
  "mailEnabled": false,
  "mailNickname": "operations2019",
  "securityEnabled": true,
  "owners@odata.bind": [
    "https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2"
  ],
  "members@odata.bind": [
    "https://graph.microsoft.com/beta/users/ff7cb387-6688-423c-8188-3da9532a73cc",
    "https://graph.microsoft.com/beta/users/69456242-0067-49d3-ba96-9de6f2728e14"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-prepopulated-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-prepopulated-group-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-prepopulated-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-prepopulated-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-prepopulated-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-prepopulated-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-prepopulated-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-prepopulated-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of a successful response. It includes only default properties. You can subsequently get the **owners** or **members** navigation properties of the group to verify the owner or members. The value of the **preferredDataLocation** property is inherited from the group creator's preferred data location.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_prepopulated_group"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/1226170d-83d5-49b8-99ab-d1ab3d91333e/Microsoft.DirectoryServices.Group",
    "id": "1226170d-83d5-49b8-99ab-d1ab3d91333e",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2021-09-21T07:14:44Z",
    "createdByAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
    "organizationId": "84841066-274d-4ec0-a5c1-276be684bdd3",
    "description": "Group with designated owner and members",
    "displayName": "Operations group",
    "expirationDateTime": null,
    "groupTypes": [],
    "infoCatalogs": [],
    "isAssignableToRole": null,
    "isManagementRestricted": null,
    "mail": null,
    "mailEnabled": false,
    "mailNickname": "operations2019",
    "membershipRule": null,
    "membershipRuleProcessingState": null,
    "onPremisesDomainName": null,
    "onPremisesLastSyncDateTime": null,
    "onPremisesNetBiosName": null,
    "onPremisesSamAccountName": null,
    "onPremisesSecurityIdentifier": null,
    "onPremisesSyncEnabled": null,
    "preferredDataLocation": null,
    "preferredLanguage": null,
    "proxyAddresses": [],
    "renewedDateTime": "2021-09-21T07:14:44Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-304486157-1236829141-2882644889-1043566909",
    "theme": null,
    "visibility": null,
    "writebackConfiguration": {
        "isEnabled": null,
        "onPremisesGroupType": null
    },
    "onPremisesProvisioningErrors": []
}
```

<a name='example-3-create-a-microsoft-365-group-that-can-be-assigned-to-an-azure-ad-role'></a>

### Example 3: Create a Microsoft 365 group that can be assigned to a Microsoft Entra role

#### Request

The following example shows a request. The calling user must be assigned the _RoleManagement.ReadWrite.Directory_ permission to set the **isAssignableToRole** property or update the membership of such groups.

A group with **isAssignableToRole** property set to `true` cannot be of dynamic membership type, its **securityEnabled** must be set to `true`, and **visibility** can only be `Private`.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "create_role_enabled_group"
}-->

```http
POST https://graph.microsoft.com/beta/groups
Content-Type: application/json

{
    "description": "Group assignable to a role",
    "displayName": "Role assignable group",
    "groupTypes": [
        "Unified"
    ],
    "isAssignableToRole": true,
    "mailEnabled": true,
    "securityEnabled": true,
    "mailNickname": "contosohelpdeskadministrators",
    "owners@odata.bind": [
        "https://graph.microsoft.com/beta/users/99e44b05-c10b-4e95-a523-e2732bbaba1e"
    ],
    "members@odata.bind": [
        "https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0",
        "https://graph.microsoft.com/beta/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-role-enabled-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-role-enabled-group-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-role-enabled-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-role-enabled-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-role-enabled-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-role-enabled-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-role-enabled-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-role-enabled-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response. The value of the **preferredDataLocation** property is inherited from the group creator's preferred data location.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_role_enabled_group"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/84841066-274d-4ec0-a5c1-276be684bdd3/directoryObjects/1afc3ca3-b14d-43af-9c70-8ae3a5065454/Microsoft.DirectoryServices.Group",
    "id": "1afc3ca3-b14d-43af-9c70-8ae3a5065454",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2021-09-21T07:16:21Z",
    "createdByAppId": "de8bc8b5-d9f9-48b1-a8ad-b748da725064",
    "organizationId": "84841066-274d-4ec0-a5c1-276be684bdd3",
    "description": "Group assignable to a role",
    "displayName": "Role assignable group",
    "expirationDateTime": null,
    "groupTypes": [
        "Unified"
    ],
    "infoCatalogs": [],
    "isAssignableToRole": true,
    "isManagementRestricted": null,
    "mail": "contosohelpdeskadministrators@Contoso.com",
    "mailEnabled": true,
    "mailNickname": "contosohelpdeskadministrators",
    "membershipRule": null,
    "membershipRuleProcessingState": null,
    "onPremisesDomainName": null,
    "onPremisesLastSyncDateTime": null,
    "onPremisesNetBiosName": null,
    "onPremisesSamAccountName": null,
    "onPremisesSecurityIdentifier": null,
    "onPremisesSyncEnabled": null,
    "preferredDataLocation": "EU",
    "preferredLanguage": null,
    "proxyAddresses": [
        "SMTP:contosohelpdeskadministrators@Contoso.com"
    ],
    "renewedDateTime": "2021-09-21T07:16:21Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": true,
    "securityIdentifier": "S-1-12-1-452738211-1135587661-3817500828-1414792869",
    "theme": null,
    "visibility": "Private",
    "writebackConfiguration": {
        "isEnabled": null,
        "onPremisesGroupType": null
    },
    "onPremisesProvisioningErrors": []
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create group",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
