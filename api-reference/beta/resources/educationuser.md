---
title: "educationUser resource type"
description: "Represents a user in the system."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: User
ms.date: 06/10/2024
---

# educationUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in the system. This resource is an education-specific variant of the standard [user] resource, with the same `id` that Microsoft Graph returns from the non-education-specific `/users` endpoint.

This object provides a targeted subset of properties from the core [user] object and adds a set of education-specific properties such as `primaryRole`, `student`, and `teacher`.

## Methods

| Method                                               | Return Type                                  | Description                                                                   |
| :--------------------------------------------------- | :------------------------------------------- | :---------------------------------------------------------------------------- |
| [Get user](../api/educationuser-get.md)     | [educationUser]                              | Read properties and relationships of an **educationUser** object.             |
| [List classes](../api/educationuser-list-classes.md) | [educationClass] collection                  | Get the **educationClass** object collection for which the user is member.    |
| [List schools](../api/educationuser-list-schools.md) | [educationSchool] collection                 | Get the **educationSchool** object collection for which the user is a member. |
| [Get user](../api/educationuser-get-user.md)         | [user]                                       | Get the simple directory **user** that corresponds to this **educationUser**. |
| [Update](../api/educationuser-update.md)             | [educationUser]                              | Update an **educationUser** object.                                           |
| [Delete user](../api/educationuser-delete.md)             | None                                         | Delete an **educationUser** object.                                           |
| [Get delta](../api/educationuser-delta.md)               | [educationUser](educationuser.md) collection | Get incremental changes for **educationUsers**.                               |

## Properties

| Property             | Type                         | Description                                                                                                                                                                                   |
| :------------------- | :--------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                   | String                       | The unique identifier for the user. Inherited from [directoryObject]. Key. Not nullable. Read-only.                                                                                           |
| accountEnabled       | Boolean                      | **True** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports \$filter.                                                                |
| assignedLicenses     | [assignedLicense] collection | The licenses that are assigned to the user. Not nullable.                                                                                                                                     |
| assignedPlans        | [assignedPlan] collection    | The plans that are assigned to the user. Read-only. Not nullable.                                                                                                                             |
| businessPhones       | String collection            | The telephone numbers for the user. **Note:** Although this is a string collection, only one number can be set for this property.                                                             |
| createdBy            | [identitySet]                | Entity who created the user.                                                                                                                                                                  |
| department           | String                       | The name for the department in which the user works. Supports \$filter.                                                                                                                       |
| displayName          | String                       | The name displayed in the address book for the user. Supports $filter and $orderby.                                                                                                           |
| externalSource       | String                       | The type of external source this resource was generated from (automatically determined from `externalSourceDetail`). Possible values are: `sis`, `lms`, or `manual`.                          |
| externalSourceDetail | String                       | The name of the external source this resource was generated from.                                                                                                                            |
| givenName            | String                       | The given name (first name) of the user. Supports \$filter.                                                                                                                                   |
| mail                 | String                       | The SMTP address for the user; for example, "jeff@contoso.com". Read-Only. Supports \$filter.                                                                                     |
| mailNickname         | String                       | The mail alias for the user. This property must be specified when a user is created. Supports \$filter.                                                                                       |
| mailingAddress       | [physicalAddress]            | Mail address of user. Note: `type` and `postOfficeBox` aren't supported for `educationUser` resources.                                                                                       |
| middleName           | String                       | The middle name of user.                                                                                                                                                                      |
| mobilePhone          | String                       | The primary cellular telephone number for the user.                                                                                                                                           |
| officeLocation       | String                       | The office location for the user.                                                                                                                                          |
| onPremisesInfo       | [educationOnPremisesInfo]    | Additional information used to associate the Microsoft Entra user with its Active Directory counterpart.                                                                                                 |
| passwordPolicies     | String                       | Specifies password policies for the user. For more details, see the standard [user] resource.                                                                                                |
| passwordProfile      | [passwordProfile]            | Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. For more details, see the standard [user] resource. |
| preferredLanguage    | String                       | The preferred language for the user. Should follow ISO 639-1 Code; for example, "en-US".                                                                                                      |
| primaryRole          | string                       | Default role for a user. The user's role might be different in an individual class. Possible values are: `student`, `teacher`, `faculty`. Supports \$filter.                                  |
| provisionedPlans     | [provisionedPlan] collection | The plans that are provisioned for the user. Read-only. Not nullable.                                                                                                                         |
| relatedContacts      | [relatedContact] collection  | Related records related to the user. Possible relationships are `parent`, `relative`, `aide`, `doctor`, `guardian`, `child`, `other`, `unknownFutureValue`                                    |
| residenceAddress     | [physicalAddress]            | Address where user lives. Note: `type` and `postOfficeBox` aren't supported for `educationUser` resources.                                                                                   |
| student              | [educationStudent]           | If the primary role is student, this block contains student specific data.                                                                                                                |
| surname              | String                       | The user's surname (family name or last name). Supports \$filter.                                                                                                                             |
| teacher              | [educationTeacher]           | If the primary role is teacher, this block contains teacher specific data.                                                                                                                |
| usageLocation        | String                       | A two-letter country code ([ISO 3166 Alpha-2]). Required for users who are assigned licenses. Not nullable. Supports \$filter.                                                            |
| userPrincipalName    | String                       | The user principal name (UPN) for the user. Supports $filter and $orderby. For more details, see the standard [user] resource.                                                               |
| userType             | String                       | A string value that can be used to classify user types in your directory, such as "Member" and "Guest". Supports \$filter.                                                                    |

> [!IMPORTANT]
> When using Delegated permission scopes, Graph will only return a limited set of properties: `id`, `primaryRole`, `accountEnabled`, `displayName`, `givenName`, `surname`, `userPrincipalName`, `userType`, `onPremisesInfo`, `student/externalId`, `teacher/externalId`. If your application requires additional properties, you must use Application permission scopes.

## Relationships

| Relationship  | Type                         | Description                                  |
| :------------ | :--------------------------- | :------------------------------------------- |
| assignments   | [educationAssignment]        | List of assignments for the user. Nullable.  |
| classes       | [educationClass] collection  | Classes to which the user belongs. Nullable. |
| schools       | [educationSchool] collection | Schools to which the user belongs. Nullable. |
| taughtClasses | [educationClass] collection  | Classes for which the user is a teacher.     |
|rubrics|[educationRubric](educationrubric.md) collection|When set, the grading rubric attached to the assignment.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationUser"
}-->

```json
{
  "accountEnabled": true,
  "assignedLicenses": [{ "@odata.type": "microsoft.graph.assignedLicense" }],
  "assignedPlans": [{ "@odata.type": "microsoft.graph.assignedPlan" }],
  "businessPhones": ["String"],
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "department": "String",
  "displayName": "String",
  "externalSource": "string",
  "givenName": "String",
  "id": "String (identifier)",
  "mail": "String",
  "mailNickname": "String",
  "mailingAddress": { "@odata.type": "microsoft.graph.physicalAddress" },
  "middleName": "String",
  "mobilePhone": "String",
  "officeLocation": "String",
  "onPremisesInfo": {
    "@odata.type": "microsoft.graph.educationOnPremisesInfo"
  },
  "passwordPolicies": "String",
  "passwordProfile": { "@odata.type": "microsoft.graph.passwordProfile" },
  "preferredLanguage": "String",
  "primaryRole": "string",
  "provisionedPlans": [{ "@odata.type": "microsoft.graph.provisionedPlan" }],
  "residenceAddress": { "@odata.type": "microsoft.graph.physicalAddress" },
  "student": { "@odata.type": "microsoft.graph.educationStudent" },
  "surname": "String",
  "teacher": { "@odata.type": "microsoft.graph.educationTeacher" },
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]

}-->

[educationuser]: educationuser.md
[educationclass]: educationclass.md
[educationschool]: educationschool.md
[educationassignment]: educationassignment.md
[educationteacher]: educationteacher.md
[educationstudent]: educationstudent.md
[relatedcontact]: relatedcontact.md
[physicaladdress]: physicaladdress.md
[provisionedplan]: provisionedplan.md
[passwordprofile]: passwordprofile.md
[identityset]: identityset.md
[assignedplan]: assignedplan.md
[assignedlicense]: assignedlicense.md
[user]: user.md
[directoryobject]: directoryobject.md
[educationonpremisesinfo]: educationonpremisesinfo.md
[iso 3166 alpha-2]: https://www.iso.org/obp/ui/#search
[rfc 822]: https://tools.ietf.org/html/rfc822
