---
title: "Use the Microsoft Search API in Microsoft Graph to search people (preview)"
description: "You can use the Microsoft Search API to search for people relevant to you."
author: "acsehi"
ms.localizationpriority: medium
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to search people (preview)

Microsoft Graph applications can use the Microsoft Search API to retrieve the people who are most relevant to a user. Relevance is determined by the user’s communication, collaboration patterns and business relationships. People can be local contacts or from an organization’s directory, and people from recent communications. Along with generating this insight, search also provides fuzzy matching search support.

## Returned people properties
The people api returns the following set of properties:


| **Response field name** | **Data type** |
|:--------------------------|:----------------------------------------|
|   hitId | String |
|   rank | Integer |
|   summary | String |
|   displayName | String |
|   givenName | String |
|   surname | String |
|   emailAddress | String |
|   phones | String |
|   jobTitle | String |
|   department | String |
|   officeLocation | String |
|   personType | String |
|   userPrincipalName | String |
|   additionalOfficeLocation | String |

## Person types
The People API supports several people types and subtypes that users can ask for, see the table below.
|                                             | RecipientTypeDetails  | Mailbox            | Directory          | PeopleType | PeopleSubtype            | Notes
|---------------------------------------------|-----------------------|--------------------|--------------------|------------|--------------------------|----------------
| Organization User                           | UserMailbox, MailUser | Y                  | Y                  | Person     | OrganizationUser         | A user that belongs to the organization
| Organization User without email address     | User                  | Y (Off by default) | Y (Off by default) | Person     | OrganizationUser         | A user that belongs to the organization
| Organization Contact                        | MailContact,Contact   | N                  | Y                  | Person     | OrganizationContact      | A contact explicitly added to the GAL by the tenant admin, but which is not part of the organization
| Private contact                             | Contact               | Y                  | N/A                | Person     | PersonalContact          | A contact explicitly created by the user that doesn't belong to the organization. If the user manually adds to its contacts someone part of the organization, it will still be classified as OrganizationUser
| Private contact without email address       | Contact               | Y (Off by default) | N/A                | Person     | PersonalContact          | A contact explicitly created by the user that doesn't belong to the organization. If the user manually adds to its contacts someone part of the organization, it will still be classified as OrganizationUser
| Implicit contact from communication history | Contact               | Y                  | N/A                | Person     | ImplicitContact          | A contact inferred from communication history (email and chat) that we don’t have enough information about to determine if it’s a person, group, etc. On business accounts, this will always be an outside org contact, as inside org contacts found in the communication history will always be classified as OrganizationUser. For consumer accounts, anything not a PersonalContact will be classified as ImplicitContact.
| Implicit contact from chat history          | Contact               | Y                  | N/A                | Person     | ChatImplicitContact      | Same as ImplicitContact, but when the communication history is exclusively from chat
| Room                                        | Rooms                 | Y                  | Y                  | Other      | Room                     |
| Guest                                       | GuestUser             | Y                  | Y                  | Other      | Guest                    |
| Hidden Guest                                | GuestUser             | Y (Off by default) | Y (Off by default) | Other      | Guest                    |
| Modern Group                                | Group                 | Y                  | Y                  | Group      | UnifiedGroup             | Group known as: Exchange 365 Group, Modern Groups, Microsoft 365 Groups. [Learn about Microsoft 365 Groups](https://support.microsoft.com/en-us/office/learn-about-microsoft-365-groups-b565caa1-5c40-40ef-9915-60fdb2d97fa2)
| Teams Group                                 | Group                 | Y                  | Y                  | Group      | UnifiedGroup             | As above but represents internally a Teams "Team"
| Hidden Teams Group                          | Group                 | Y (Off by default) | Y                  | Group      | UnifiedGroup             | Hidden Teams Group
| Distribution List                           | Group                 | Y                  | Y                  | Group      | PublicDistributionList   | Classic Exchange Distribution List or mail enabled Security Group
| PersonalDistributionList                    | Contact               | Y (Off by default) | N/A                | Group      | PersonalDistributionList | A virtual distribution group created by the user as a helper to send emails to multiple contacts in an easy way. Used only for OWA Compose as a UX feature, not returned for other callers
| Hidden object of any type except Guest and Teams Group  |                       | N                  | N                  |            |                          |


## Request details
The results of the people API can be specific by giving additional details when making the request. The following are a few ways to make the requests more specific. 

## Source of results
People results come from two sources, mailbox or directory. By default, the results will come from both sources with conflicts being removed so that we are not showing returning same values, but directory sources are preferred when there are conflicts. 

Mailbox results consist of:
* People who sent you email
* People who you sent email to
* People you had meeting with
* People you had Teams chat with
* People in your manager's org chart
* Public contacts of the above people

While directory searches in the global addressing list in active directory. Please note:
* Not applicable for Consumer users. 
* People who are not in the callers global addressing list will not be returned
* People who are hidden by IBP (Information Barrier protocol) will not be returned
* People who are hidden in the address list will not be returned

### Example 1: mailbox results only
```
“Provenances”: [“Mailbox”]
```

### Example 2: Results from both sources

```
“Provenances”: [“Mailbox”, “Directory”]
```

## Size 
By default 25 results or less will be returned based on the search query matches. Based on the use case more results can be returned is the size is specified.

## From
Specify the minimum index for paging, default is 0, the first results is the most relevant.

## Fields: 
The API returns a set of default properties, but this can be customized to return a specific number of properties that you care about.  

### Example: Specifying fields to return
```
"Fields": ["DisplayName", "EmailAddresses", "phones"]  
```

## Filter
Results can be filtered down to specific values. Possible filter values: PeopleTypes, PeopleSubTypes

  Example 1: Filter to only person suggestions. Returns both private and organization contacts.

  ```json
          "Filter": {
              "And": [{
                  "Term": {
                      "PeopleType": "Person"
                  }
              }]
          },
  ```

  Example 2: Filter to only person suggestions within the Organization (Business users only)

  ```json
         "Filter": {
              "And": [{
                  "Term": {
                      "PeopleType": "Person"
                  }
              }, {
                  "Term": {
                      "PeopleSubtype": "OrganizationUser"
                  }
              }]
          },
  ```

  Example 3: All users, Distribution lists, or Modern Distribution List in the organization

    
    json
        "Filter": {
            "Or": [{
                "Term": {
                    "PeopleSubtype": "OrganizationUser"
                }
            }, {
                "Term": {
                    "PeopleSubtype": "PublicDistributionList"
                }
            }, {
                "Term": {
                    "PeopleSubtype": "UnifiedGroup"
                }
            }]
        },
        
    

  Example 4: Return organization users and meeting rooms

    json
        "Filter": {
            "Or": [{
                "Term": {
                    "PeopleSubtype": "OrganizationUser"
                }
            }, {
                "Term": {
                    "PeopleSubtype": "Rooms"
                }
            }]
        },
    

  Example 5: Return organization users and Guests

    
    json
        "Filter": {
            "Or": [{
                "Term": {
                    "PeopleSubtype": "OrganizationUser"
                }
            }, {
                "Term": {
                    "PeopleSubtype": "Guest"
                }
            }]
        },
    
  Example 6: Combining multiple filters.

   ```
   json
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
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetapersoninsearch/$metadata#microsoft.graph.searchResponse",
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

- [Use the Microsoft Search API](/graph/api/resources/search-api-overview)
