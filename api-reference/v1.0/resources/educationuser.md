---
title: "educationUser resource type"
description: "Represents a user in the system. This is an education-specific variant of the user with the same ID that Microsoft Graph will return from the non-education-specific /users endpoint."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationUser resource type

Namespace: microsoft.graph

A user in the system. This is an education-specific variant of the user with the same **id** that Microsoft Graph will return from the non-education-specific `/users` endpoint. This object provides a targeted subset of properties from the core [user](../resources/user.md) object and adds a set of education-specific properties such as **primaryRole**, **student**, and **teacher** data.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                           | Return type                                                 | Description                                                                                        |
| :--------------------------------------------------------------- | :---------------------------------------------------------- | :------------------------------------------------------------------------------------------------- |
| [List educationUsers](../api/educationuser-list.md)              | [educationUser](../resources/educationuser.md) collection   | Get a list of the [educationUser](../resources/educationuser.md) objects and their properties.     |
| [Create educationUser](../api/educationuser-post.md)             | [educationUser](../resources/educationuser.md)              | Create a new [educationUser](../resources/educationuser.md) object.                                |
| [Get educationUser](../api/educationuser-get.md)                 | [educationUser](../resources/educationuser.md)              | Read the properties and relationships of an [educationUser](../resources/educationuser.md) object. |
| [Update educationUser](../api/educationuser-update.md)           | [educationUser](../resources/educationuser.md)              | Update the properties of an [educationUser](../resources/educationuser.md) object.                 |
| [Delete educationUser](../api/educationuser-delete.md)           | None                                                        | Delete an [educationUser](../resources/educationuser.md) object.                                   |
| [delta](../api/educationuser-delta.md)                           | [educationUser](../resources/educationuser.md) collection   | Get incremental changes to the resource collection.                                                |
| [List taughtClasses](../api/educationuser-list-taughtclasses.md) | [educationClass](../resources/educationclass.md) collection | Get the **educationClass** resources from the **taughtClasses** navigation property.                       |

## Properties

| Property             | Type                                                               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| :------------------- | :----------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| accountEnabled       | Boolean                                                            | `True` if the account is enabled; otherwise, `false`. This property is required when a user is created. Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                                |
| assignedLicenses     | [assignedLicense](../resources/assignedlicense.md) collection      | The licenses that are assigned to the user. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| assignedPlans        | [assignedPlan](../resources/assignedplan.md) collection            | The plans that are assigned to the user. Read-only. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| businessPhones       | String collection                                                  | The telephone numbers for the user. **Note:** Although this is a string collection, only one number can be set for this property.                                                                                                                                                                                                                                                                                                                                                                                                        |
| createdBy            | [identitySet](../resources/identityset.md)                         | The entity who created the user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| department           | String                                                             | The name for the department in which the user works. Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| displayName          | String                                                             | The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports `$filter` and `$orderby`.                                                                                                                                                                                                                                                               |
| externalSource       | educationExternalSource                                            | Where this user was created from. Possible values are: `sis`, `manual`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| externalSourceDetail | String                                                             | The name of the external source this resource was generated from.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| givenName            | String                                                             | The given name (first name) of the user. Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| id                   | String                                                             | Object identifier. Inherited from [entity](../resources/entity.md).                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| mail                 | String                                                             | The SMTP address for the user, for example, `jeff@contoso.onmicrosoft.com`. Read-Only. Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| mailingAddress       | [physicalAddress](../resources/physicaladdress.md)                 | The mail address of the user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| mailNickname         | String                                                             | The mail alias for the user. This property must be specified when a user is created. Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| middleName           | String                                                             | The middle name of the user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| mobilePhone          | String                                                             | The primary cellular telephone number for the user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| onPremisesInfo       | [educationOnPremisesInfo](../resources/educationonpremisesinfo.md) | Additional information used to associate the Azure Active Directory user with its Active Directory counterpart.                                                                                                                                                                                                                                                                                                                                                                                                                          |
| passwordPolicies     | String                                                             | Specifies password policies for the user. This value is an enumeration with one possible value being `DisableStrongPassword`, which allows weaker passwords than the default policy to be specified. `DisablePasswordExpiration` can also be specified. The two can be specified together; for example: `DisablePasswordExpiration, DisableStrongPassword`.                                                                                                                                                                              |
| passwordProfile      | [passwordProfile](../resources/passwordprofile.md)                 | Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.                                                                                                                                                                                                                                     |
| preferredLanguage    | String                                                             | The preferred language for the user that should follow the ISO 639-1 code, for example, `en-US`.                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| primaryRole          | educationUserRole                                                  | Default role for a user. The user's role might be different in an individual class. Possible values are: `student`, `teacher`, `none`, `unknownFutureValue`.                                                                                                                                                                                                                                                                                                                                                                             |
| provisionedPlans     | [provisionedPlan](../resources/provisionedplan.md) collection      | The plans that are provisioned for the user. Read-only. Not nullable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| relatedContacts      | [relatedContact] collection                                        | Related records associated with the user. Read-only.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| residenceAddress     | [physicalAddress](../resources/physicaladdress.md)                 | The address where the user lives.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| showInAddressList    | Boolean                                                            | `True` if the Outlook Global Address List should contain this user; otherwise, `false`. If not set, this will be treated as `true`. For users invited through the invitation manager, this property will be set to `false`.                                                                                                                                                                                                                                                                                                               |
| student              | [educationStudent](../resources/educationstudent.md)               | If the primary role is student, this block will contain student specific data.                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| surname              | String                                                             | The user's surname (family name or last name). Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| teacher              | [educationTeacher](../resources/educationteacher.md)               | If the primary role is teacher, this block will contain teacher specific data.                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| usageLocation        | String                                                             | A two-letter country code (ISO standard 3166). Required for users who will be assigned licenses due to a legal requirement to check for availability of services in countries or regions. Examples include: `US`, `JP`, and `GB`. Not nullable. Supports `$filter`.                                                                                                                                                                                                                                                                      |
| userPrincipalName    | String                                                             | The user principal name (UPN) of the user. The UPN is an internet-style login name for the user based on the internet standard RFC 822. By convention, this should map to the user's email name. The general format is `alias@domain`, where domain must be present in the tenant's collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of the [organization](organization.md). Supports `$filter` and `$orderby`. |
| userType             | String                                                             | A string value that can be used to classify user types in your directory, such as `Member` and `Guest`. Supports `$filter`.                                                                                                                                                                                                                                                                                                                                                                                                              |

> [!IMPORTANT]
> When using Delegated permission scopes, Microsoft Graph will only return a limited set of properties: **id**, **primaryRole**, **accountEnabled**, **displayName**, **givenName**, **surname**, **userPrincipalName**, **userType**, **onPremisesInfo**, **student/externalId**, **teacher/externalId**. If your application requires additional properties, you must use Application permission scopes.

## Relationships


| Relationship  | Type                                                          | Description                                    |
| :------------ | :------------------------------------------------------------ | :--------------------------------------------- |
| assignments   | [educationAssignment](../resources/educationassignment.md) collection   | Assignments belonging to the user.   |
| classes       | [educationClass](../resources/educationclass.md) collection   | Classes to which the user belongs. Nullable.   |
| schools       | [educationSchool](../resources/educationschool.md) collection | Schools to which the user belongs. Nullable.   |
| taughtClasses | [educationClass](../resources/educationclass.md) collection   | Classes for which the user is a teacher.       |
| user          | [user](../resources/user.md)                                  | The directory user that corresponds to this user. |
|rubrics|[educationRubric](educationrubric.md) collection|When set, the grading rubric attached to the assignment.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationUser",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationUser",
  "accountEnabled": "Boolean",
  "assignedLicenses": [
    {
      "@odata.type": "microsoft.graph.assignedLicense"
    }
  ],
  "assignedPlans": [
    {
      "@odata.type": "microsoft.graph.assignedPlan"
    }
  ],
  "businessPhones": ["String"],
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "department": "String",
  "displayName": "String",
  "externalSource": "String",
  "externalSourceDetail": "String",
  "givenName": "String",
  "id": "String (identifier)",
  "mail": "String",
  "mailingAddress": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "mailNickname": "String",
  "middleName": "String",
  "mobilePhone": "String",
  "officeLocation": "String",
  "onPremisesInfo": {
    "@odata.type": "microsoft.graph.educationOnPremisesInfo"
  },
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
  "preferredLanguage": "String",
  "primaryRole": "String",
  "provisionedPlans": [
    {
      "@odata.type": "microsoft.graph.provisionedPlan"
    }
  ],
  "refreshTokensValidFromDateTime": "String (timestamp)",
  "residenceAddress": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "showInAddressList": "Boolean",
  "student": {
    "@odata.type": "microsoft.graph.educationStudent"
  },
  "surname": "String",
  "teacher": {
    "@odata.type": "microsoft.graph.educationTeacher"
  },
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
  "suppressions": [
   ],
  "tocPath": ""
}-->

[educationuser]: educationuser.md
[educationclass]: educationclass.md
[educationschool]: educationschool.md
[educationassignment]: /graph/api/resources/educationassignment?view=graph-rest-beta
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
