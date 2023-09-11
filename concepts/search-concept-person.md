---
title: "Use the Microsoft Search API to search people"
description: "Use the Microsoft Search API in Microsoft Graph to search for people relevant to a user determined by the user’s communication patterns and business relationships."
author: "acsehi"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API to search people

Microsoft Graph applications can use the Microsoft Search API to retrieve the people who are most relevant to a user. Relevance is determined by the user’s communication and collaboration patterns and business relationships. People can be local contacts or from an organization’s directory or people from recent communications.

Along with generating this insight, search also provides fuzzy matching search support and the ability to retrieve the list of users relevant to another user in the signed-in user's organization.

## People APIs
You can use the following APIs to search for people inside an organization.

- /search
- /people

> [!NOTE]
> We recommended that users call the `/search` endpoint instead of the `/people` endpoint. Going forward, all future investments will only be available in the `/search` endpoint; the `/people` endpoint is in maintenance mode.

## Returned people properties
The people API returns the following set of properties.

| Property                 | Type    |
|:-------------------------|:--------|
| additionalOfficeLocation | String  |
| companyName              | String  |
| department               | String  |
| displayName              | String  |
| emailAddress             | String  |
| givenName                | String  |
| hitId                    | String  |
| imAddress                | String  |
| jobTitle                 | String  |
| officeLocation           | String  |
| personType               | String  |
| phones                   | String  |
| rank                     | Integer |
| summary                  | String  |
| surname                  | String  |
| userPrincipalName        | String  |

## Person types
The following table shows people types and subtypes supported in the people API.

| Supported people, groups, and rooms variations         | Recipient type details | Mailbox            | Directory          | People type | People subtype           | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:-------------------------------------------------------|:-----------------------|:-------------------|:-------------------|:------------|:-------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Organization user                                      | UserMailbox, MailUser  | Y                  | Y                  | Person      | OrganizationUser         | A user who belongs to the organization.                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Organization user without email address                | User                   | Y (Off by default) | Y (Off by default) | Person      | OrganizationUser         | A user who belongs to the organization.                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Organization contact                                   | MailContact, Contact   | N                  | Y                  | Person      | OrganizationContact      | A contact explicitly added to the global address list (GAL) by the tenant admin, but which is not part of the organization.                                                                                                                                                                                                                                                                                                                              |
| Private contact                                        | Contact                | Y                  | N/A                | Person      | PersonalContact          | A contact explicitly created by the user that doesn't belong to the organization. If the user manually adds to its contacts someone part of the organization, it will still be classified as `OrganizationUser`.                                                                                                                                                                                                                                           |
| Private contact without email address                  | Contact                | Y (Off by default) | N/A                | Person      | PersonalContact          | A contact explicitly created by the user that doesn't belong to the organization. If the user manually adds to its contacts someone part of the organization, it will still be classified as `OrganizationUser`.                                                                                                                                                                                                                                           |
| Implicit contact from communication history            | Contact                | Y                  | N/A                | Person      | ImplicitContact          | A contact inferred from communication history (email and chat) that we don't have enough information about to determine if it is a person, group, etc. On business accounts, this will always be an outside organization contact, as inside organization contacts found in the communication history will always be classified as `OrganizationUser`. For consumer accounts, anything that is not a `PersonalContact` will be classified as `ImplicitContact`. |
| Implicit contact from chat history                     | Contact                | Y                  | N/A                | Person      | ChatImplicitContact      | Same as `ImplicitContact`, but when the communication history is exclusively from chat.                                                                                                                                                                                                                                                                                                                                                                    |
| Room                                                   | Rooms                  | Y                  | Y                  | Other       | Room                     |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Guest                                                  | GuestUser              | Y                  | Y                  | Other       | Guest                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Hidden guest                                           | GuestUser              | Y (Off by default) | Y (Off by default) | Other       | Guest                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Modern group                                           | Group                  | Y                  | Y                  | Group       | UnifiedGroup             | Group known as: Exchange 365 Group, Modern Groups, Microsoft 365 Groups. For more details about Microsoft 365 Groups, see [Learn about Microsoft 365 Groups](https://support.microsoft.com/en-us/office/learn-about-microsoft-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2).                                                                                                                                                                          |
| Teams group                                            | Group                  | Y                  | Y                  | Group       | UnifiedGroup             | Same as Microsoft 365 Groups, but represents internally a team in Microsoft Teams.                                                                                                                                                                                                                                                                                                                                                                        |
| Hidden Teams group                                     | Group                  | Y (Off by default) | Y                  | Group       | UnifiedGroup             | Hidden Teams group.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Distribution list                                      | Group                  | Y                  | Y                  | Group       | PublicDistributionList   | Classic Exchange distribution list or mail enabled security group.                                                                                                                                                                                                                                                                                                                                                                                       |
| Personal distribution list                             | Contact                | Y (Off by default) | N/A                | Group       | PersonalDistributionList | A virtual distribution group created by the user as a helper to send emails to multiple contacts in an easy way. Used only for Outlook on the web compose as a UX feature, not returned for other callers.                                                                                                                                                                                                                                               |
| Hidden object of any type except Guest and Teams group |                        | N                  | N                  |             |                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                          |


## Request details
Make the results of the people API more specific by giving additional details when you make a request. The following are a few ways to make the requests more specific.

### Example 1: Mailbox results only
```json
"Provenances": ["Mailbox"]
```

### Example 2: Results from both sources

```json
"Provenances": ["Mailbox", "Directory"]
```

## Source of results
People results come from two sources, mailbox or directory. By default, the results will come from both sources with conflicts being removed, which ensures that same values won't be returned.

> **Note**: In case of a conflict, directory sources are preferred.

Mailbox results consist of:

- People who sent you email
- People who you sent email to
- People you had meeting with
- People you had Teams chat with
- People in your manager's org chart
- Public contacts of the above people

Relevant aspects for the use case when a directory source searches in the global addressing list in Azure Active Directory:

- Not applicable for consumer users
- People who are not in the caller's global addressing list will not be returned
- People who are hidden by IBP (information barrier protocol) will not be returned
- People who are hidden in the address list will not be returned

## Get more results 
Specify the size to get more results. By default, 25 results or less will be returned based on the search query matches.

```json
"Size": 25   
```

## Specify the minimum index for paging
Set the minimum index for paging to specify the initial page of results. By default, the minimum index for paging is `0` and the first result is the most relevant.

```json
"From": 0   
```

## Select the fields to return 
The API returns a set of default properties, but you can customize a request to return a specific number of properties. The following example limits the response to the **DisplayName**, **EmailAddresses**, and **phones** properties.

```json
"Fields": ["DisplayName", "EmailAddresses", "phones"]  
```

## Use a filter to limit the response
Use the **Filter** object to limit the response to specific values. Possible filter values are: **PeopleType**, **PeopleSubType**.

The following examples show requests that use the **Filter** object to return people whose record contains the specified criteria.

### Example 1: Filter to person suggestions

The following example limits the response to only person suggestions. The response contains both private and organization contacts.

```json
"Filter": {
  "And": [
    {
      "Term": {
        "PeopleType": "Person"
      }
    }
  ]
},
```

### Example 2: Filter to person suggestions within the organization

The following example limits the reponse only to business users.

```json
"Filter": {
  "And": [
    {
      "Term": {
        "PeopleType": "Person"
      }
    },
    {
      "Term": {
        "PeopleSubtype": "OrganizationUser"
      }
    }
  ]
},
```

### Example 3: Filter to all users, distribution lists, or modern distribution list in the organization

The following example limits the response to different categories of **PeopleSubtype**.

```json
"Filter": {
  "Or": [
    {
      "Term": {
        "PeopleSubtype": "OrganizationUser"
      }
    },
    {
      "Term": {
        "PeopleSubtype": "PublicDistributionList"
      }
    },
    {
      "Term": {
        "PeopleSubtype": "UnifiedGroup"
      }
    }
  ]
},
```

### Example 4: Filter to organization users and meeting rooms

The following example limits the response to organization users and meeting rooms.

```json
"Filter": {
  "Or": [
    {
      "Term": {
        "PeopleSubtype": "OrganizationUser"
      }
    },
    {
      "Term": {
        "PeopleSubtype": "Rooms"
      }
    }
  ]
},
```

### Example 5: Filter to organization users and guests

The following example limits the response to organization users and guests.

``` json
"Filter": {
  "Or": [
    {
      "Term": {
        "PeopleSubtype": "OrganizationUser"
      }
    },
    {
      "Term": {
        "PeopleSubtype": "Guest"
      }
    }
  ]
},
```

### Example 6: Combine multiple filters

The following example combines multiple filters to limit the response to the specified criteria.

```json
"Filter": {
  "And": [
    {
      "Or": [
        {
          "Term": {
            "PeopleType": "Person"
          }
        },
        {
          "Term": {
            "PeopleType": "Other"
          }
        }
      ]
    },
    {
      "Or": [
        {
          "Term": {
            "PeopleSubtype": "OrganizationUser"
          }
        },
        {
          "Term": {
            "PeopleSubtype": "Guest"
          }
        }
      ]
    }
  ]
},
```

## Full request

### Example: Search person by name

The following request gets the people most relevant to the signed-in user, based on communication and collaboration patterns and business relationships.

#### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "person"
      ],
      "query": {
        "queryString": "contoso"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

#### Response

The following is an example of the response, which contains one message that matches the search criterion.

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.searchResponse",
    "value": [
        {
            "hitsContainers": [
                {
                    "total": 1,
                    "moreResultsAvailable": false,
                    "hits": [
                        {
                            "hitId": "fc138b85-18ac-48e0-80a4-633ae4b594e0@41f988bf-86f1-53af-91ab-2d7cd034db47",
                            "rank": 1,
                            "summary": "",
                            "resource": {
                                "@odata.type": "#microsoft.graph.person",
                                "displayName": "Example User",
                                "givenName": "User",
                                "surname": "User",
                                "department": "Finance",
                                "officeLocation": "London",
                                "userPrincipalName": "example.user@contoso.com",
                                "emailAddresses": [
                                    {
                                        "address": "example.user@contoso.com",
                                        "rank": 1
                                    }
                                ],
                                "phones": [
                                    {
                                        "type": "business",
                                        "number": "+44 (20) 12345678"
                                    }
                                ]
                            }
                        }
                    ]
                }
            ]
        }
    ]
}
```

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
