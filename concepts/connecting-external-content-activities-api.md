---
title: Activities API
description: Activities API
author: mecampos
ms.author: mecampos
ms.topic: conceptual
---
<!-- 1. H1
Required. Set expectations for what the content covers, so customers know the 
content meets their needs. Should NOT begin with a verb.
-->



# Activities API

[!INCLUDE [beta-disclaimer](../api-reference/includes/beta-disclaimer.md)]

Microsoft Graph connectors enable you to connect your external data to Microsoft Graph. Once you&#39;ve created a connection, your interactions with your data will help build a foundation for intelligent apps and services to benefit M365 end users.

The activities performed by one user can be registered as interactions with the available content and be used to populate users&#39; working sets, thus powering end user experiences.

## Activities Graph API

Sending user activities via the Activities Graph API enables you to:

- Light up particularly interesting scenarios from Office Hub content surfaces (Recommended, All list, etc.).
- Recognize the type of content you are bringing in.
- Identify roles and user personas (such as author, consumer, editor, or admin).
- Identify how the users interact with your content and the key actions they take.


## User activities

An activity is an event that captures user behavior. The Activities API uses these events to power intelligent, end user-facing experiences like content recommendations. ​

## Activity-content relationship​

User activities occur while using content; therefore, it is necessary to establish a relationship between the two. Microsoft Graph connectors establish a content ingestion pipeline, and the Activities API sets up a user activity ingestion pipeline on the ingested content.
​

## Content surfaces in Office Hub

| **Surface** | **Purpose** | **Example** |
| --- | --- | --- |
| **Recommended** | Items that may be **relevant** to the user based on recent activity that occurred on the items. | _Alice received a comment on her ServiceNow knowledge base article. The article is promoted within the Recommended list so she can jump back in and address the feedback._ |
| &#39; **All&#39; List** | Combination of &#39;My Recent&#39; and &#39;Shared&#39;. Supports column sorting/filtering and type-to-filter. | _See examples for &#39;My Recent&#39; and &#39;Shared&#39;._ |
| **My Recent** (a pivot of the All List) | Items with which the user most recently interacted. | _Bob created a SurveyMonkey quiz yesterday and wants to make some tweaks. It appears near the top of his My Recent list for quick and easy access. _ |
| **Shared** | Items that were recently shared with the user. | _Alice sends Bob an Outlook email with a link to a Go1 video she found useful. Bob can now go to that video from his list of Office content, rather than needing to dig through his inbox._ |
| **Favorites** (a pivot of the All List) | Items that the user favoritedin Office.com. | _In &#39;All,&#39; Bob sees an Adobe Sign PDF someone shared with him so he could sign it. He favorites the document so he can refer back to it at a later time. _ |

## Supported Activity Types

This is the list of supported activity types and relevant examples of content domains.

| **Signal type** | **Content domains** |
| --- | --- |
| **Viewed** | Learning AppGo1 |
| **Modified** |
 |
| **Created** |
 |
| **Commented** | Go1ServiceNow (KB articles) |
| **AtMentioned** | Go1 |

The API allows customers to ingest activity information related to an external item. Basic information is needed to allow activity ingestion prior to item ingestion and to give more flexibility on crawling/webhook models. Basic information includes things like the activity that happened, the item on which the activity occurred, when the activity happened, and who performed the activity. Additional details are required for some activity types, such as mentionees for the AtMentioned signal.

## POST Item

POST /beta/external/connections/{connectionId}/activities

Content-type: application/json
```http
{

   &quot;itemId&quot;:&quot;130269981682&quot;,

   &quot;type&quot;: &quot;viewed&quot;,

   &quot;startDateTime&quot;:&quot;2020-09-11T18:04:31.033Z&quot;,

   &quot;performedBy&quot;: {

     &quot;id&quot;: &quot;901cd239-b754-4a1e-9220-851355c6c6e1&quot;,

&quot;type&quot;: &quot;user&quot;

   }

}
```
## Activities Graph API parameters

This table shows the required parameters for this API.

| **Parameter ** | **Data type ** | **Required** | **Description ** |
| --- | --- | --- | --- |
| **itemId   ** | String  | YES | The itemId of the item on which the activity occurred. **This is the same**  **itemId**  **passed during content ingestion.** |
| **type    ** | String  | YES | The type of activity that occurred (Created, Viewed, Modified, Commented, AtMentioned). |
| **performedBy    ** | Identity (Complex type)  | YES | The user who performed the action. |
| **startDateTime   ** | DatetimeOffset | YES | The time captured by the client when the action occurred (in UTC). |

## Activities API recommendations

Make sure the action recorded and sent from your end captures human actions.

Do some level of preprocessing before you send the user activity data. Ensure that the quality and frequency of the data are considered.

Where to invoke the API call

- Do not send user activities from the client. User tokens are not accepted, and therefore you will not be able to ingest activities from the client. Always ingest activities from the server.

Item freshness

- If the content is updated frequently, send an update of the item once the user activity has been sent. This ensures the most up-to-date copy is in our index and reflected in the end user experience.

Data quality

- Ensure the correct dateTime for the user action is recorded.
- Remember that the &quot;Viewed&quot; activity indicates the opening or viewing of an item, NOT previewing or browsing.

Frequency

- Avoid making duplicate calls for a single user action or intent. For example, the sending of multiple &quot;Modify&quot; signals in a short period of time might simply indicate the use of Auto-Save. In that case, the many signals simply indicate that the document is open and the user is continually modifying it.
- Keep in mind that the volume of activity data is significantly less than system telemetry, occurring at a &quot;human rate&quot; rather than a &quot;machine rate.&quot;

##

## URL-to-item resolvers

A URL-to-item resolver allows to resolve the itemId from the URL and makes it possible to detect the Shared activity in the context of Teams and Outlook.

This enables Recommended, All, and Shared in Office Hub.

## URL-to-item resolver parameters

| **Parameter ** | **Data type ** | **Required** | **Description ** |
| --- | --- | --- | --- |
| **priority** | Enum | YES | You can provide multiple urlToItemResolvers (it&#39;s an array of complex types). The priority field indicates the order in which the resolvers should be used. |
| **baseUrls** | Array of Strings | YES | This is the base or root of the URL to be searched for across Teams/Outlook to indicate that the URL belongs to that connection. |
| **urlPattern** | String  | YES | A POSIX regular expression that parses the part of the URL after the base/root to extract properties or tokens associated with the item. |
| **itemId** | String | YES | An expression that indicates how to use the properties/tokens from the urlPattern to construct the itemId used at content ingestion. |

## URL-to-item resolver – Connection settings

POST https://graph.microsoft.com/v1/external/connections

Content-Type: application/json

...

&quot;activitySettings&quot;: {

&quot;urlToItemResolvers&quot;: [

{

&quot;priority&quot;: 1,

&quot;itemIdResolver&quot;: {

&quot;urlMatchInfo&quot;: {

&quot;baseUrls&quot;: [&quot;https: //www.contoso.com/files&quot;],

&quot;urlPattern&quot;: &quot;^/teams/(?\&lt;teamId\&gt;[^/]+)/tickets/(?\&lt;ticketId\&gt;[^/]+)))(/.+)?)?/?$&quot;

},

&quot;itemId&quot;: &quot;{teamId}.{ticketId} | SHA512&quot;

}

},

...

]

}

...

## Property mappings to Semantic labels

The following semantic label property mappings are necessary to render items in Office Hub experiences. You can provide semantic label mappings when you register your schema.

| **Label** | **New** | **Required** | **Description ** |
| --- | --- | --- | --- |
| **title** | No | YES | The title of the item that you want shown in search and other experiences. |
| **URL** | No | YES | The target URL of the item in the source system. |
| **iconUrl** | Yes | YES | The URL for the icon associated with the item. |
| **containerName** | Yes | NO (but recommended) | The name of the folder or &quot;container&quot; in which the item is stored. |
| **containerUrl** | Yes | NO (but recommended) | The URL for the folder or &quot;container&quot; in which the item is stored. |

## Related

Microsoft Graph Connectors API overview (link to doc)