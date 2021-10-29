---
title: "Add a member"
description: "Use this API to add a member (user or group) to an administrative unit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Add a member

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to add a member (user or group) to an administrative unit or to create a new group within an administrative unit.

`NOTE: Currently it's only possible to add one member at a time to an administrative unit.`

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions to add an existing user, group, or device
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AdministrativeUnit.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AdministrativeUnit.ReadWrite.All |

### Permissions to create a new group
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Create, Group.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /administrativeUnits/{id}/members/$ref
```
```http
POST /administrativeUnits/{id}/members
```
`NOTE: When creating a new group as a member of an administrative unit, the request URL should not contain $ref.  Otherwise, $ref is required for adding an existing user or group.`

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-type  | application/json. Required. |

## Request body
### Adding an existing user or group
In the request body, provide the `id` of a [user](../resources/user.md),  [group](../resources/group.md) or [directoryObject](../resources/directoryobject.md) to be added.

### Creating a new group
The following table shows the properties of the [group](../resources/group.md) resource to specify when you create a group in the Administrative Unit. 

| Property | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. Required. |
| description | string | A description for the group. Optional. |
| isAssignableToRole | Boolean | Set to **true** to enable the group to be assigned to an Azure AD role. Only Privileged Role Administrator and Global Administrator can set the value of this property. Optional. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. Required. |
| mailNickname | string | The mail alias for the group. These characters cannot be used in the mailNickName: `@()\[]";:.<>,SPACE`. Required. |
| securityEnabled | boolean | Set to **true** for security-enabled groups, including Microsoft 365 groups. Required. |
| owners | [directoryObject](../resources/directoryobject.md) collection | This property represents the owners for the group at creation time. Optional. |
| members | [directoryObject](../resources/directoryobject.md) collection | This property represents the members for the group at creation time. Optional. |
|visibility|String|Specifies the visibility of a Microsoft 365 group. Possible values are: `Private`, `Public`, `HiddenMembership`, or empty (which is interpreted as `Public`).|

> **Note:** Groups created using the Microsoft Azure portal always have **securityEnabled** initially set to `true`.

Because the **group** resource supports [extensions](/graph/extensibility-overview), you can use the `POST` operation and add custom properties with your own data to the group while creating it.

>**Note:** Creating a group using the Group.Create application permission without specifying owners will create the group anonymously and the group will not be modifiable. You can use the `POST` operation and add owners to the group while creating it to specify owners who can modify the group.

> Creating a Microsoft 365 group programmatically with an app-only context and without specifying owners will create the group anonymously. Doing so can result in the associated SharePoint Online site not being created automatically until further manual action is taken.  

Specify other writable properties as necessary for your group. For more information, see the properties of the [group](../resources/group.md) resource.

#### groupTypes options

Use the **groupTypes** property to control the type of group and its membership, as shown.

| Type of group | Assigned membership | Dynamic membership |
|:--------------|:------------------------|:---------------|
| Microsoft 365 (aka unified group)| `["Unified"]` | `["Unified","DynamicMembership"]`
| Dynamic | `[]` (_null_) | `["DynamicMembership"]`|

## Response

If successful, adding an existing object (using $ref) returns `204 No Content` response code. It does not return anything in the response body.  When creating a new group (without $ref), this method returns a `201 Created` response code and a [group](../resources/group.md) object in the response body. The response includes only the default properties of the group.

## Examples
### Example 1: Add an existing user or group
The following will add an existing user or group to the administrative unit.

#### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_administrativeUnits_members_ref"
} -->
```http
POST https://graph.microsoft.com/beta/administrativeUnits/{id}/members/$ref
Content-type: application/json

{
  "@odata.id":"https://graph.microsoft.com/beta/groups/{id}"
}

```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-administrativeunits-members-ref-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-administrativeunits-members-ref-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/post-administrativeunits-members-ref-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-administrativeunits-members-ref-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, provide the `id` of the [user](../resources/user.md) or [group](../resources/group.md) object you want to add.

#### Response
Here is an example of the response.
 
<!-- {
  "blockType": "response",
  "truncated": true
  "name": "post_administrativeUnits_members_ref"
} -->
```http
HTTP/1.1 204 No Content
```

## Example 2: Create a new group
The following example creates a new group in the administrative unit.

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_administrativeUnits_members"
} -->
``` http
POST https://graph.microsoft.com/beta/administrativeUnits/{id}/members
Content-type: application/json
Content-length: 244

{
  "@odata.type": "#Microsoft.Graph.Group",
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
[!INCLUDE [sample-code](../includes/snippets/csharp/post-administrativeUnits-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-administrativeUnits-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/post-administrativeUnits-members-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-administrativeUnits-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, provide the properties of the [group](../resources/group.md) object you want to add.

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "post_administrativeUnits_members"
} -->
``` http
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
	     "SMTP:golfassist@contoso.onmicrosoft.com"
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
