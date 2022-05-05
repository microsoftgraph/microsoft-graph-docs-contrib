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


| **Response filed name** | **Data type** |
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

## Person types
The People API supports several subtypes that users can ask for, see the table below.
| **People Types** |	**Examples** |
|:-----------------|:--------------| 
| Person	| OrganizationUser, OrganizationContact, PersonalContact, ImplicitContact, ChatImplicitContact |
| Group	| PublicDistributionList, UnifiedGroup, PersonalDistributionList |
| Other |	Rooms, GuestUser | 

## Request details
The results of the people API can be specific by giving additional details when making the request. Below is a few ways to make the requests more specific. 

## Source of results
People results come from two sources, mailbox or directory. By default, the results will come from both sources which conflicts being removed, but directory sources are preferred when there are conflicts. 
Mail box results consist of:
* People who sent you email
* People who you sent email to
* People you had meeting with
* People you had Teams chat with
* People in your manager's org chart
* Public contacts of the above people
While directory searches in the global addressing list in active directory. Please note:
* Not applicable for Consumer users. They do not have GAL. API will return bad request.
* People who are not in the callers GAL will not be returned
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
Maximum number of results to return
## From
Specify the minimum index for paging, default is 0, the first results is the most relevant.
Fields: The API returns a set of default properties, but this can be customized to return a specific number of properties that you care about. Note: the default returned fields are only a subset of all the properties. 

## Filter
Results can be filtered down to specific values. Possible filter values: PeopleTypes, PeopleSubTypes, ExternalDirectoryObjectID

## Example: Search person by name

The following request gets the people most relevant to the signed-in user, based on communication and collaboration patterns and business relationships.

### Request

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

### Response

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
