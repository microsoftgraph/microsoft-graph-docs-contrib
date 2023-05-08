---
title: "Microsoft Graph connectors SDK contracts connector crawler API and models"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Learn about the contracts connector crawler API and models in the Microsoft Graph connectors SDK."
---

# Microsoft Graph connectors SDK contracts connector crawler API and models

The Microsoft Graph connectors SDK contracts connector crawler API and models are called during a crawl.

## Connector crawler API

|Method |Parameters |Return Type |Description |
|:----------|:-------------|:----------|:----------|
|GetCrawlStream |[GetCrawlStreamRequest](#getcrawlstreamrequest) |[CrawlStreamBit](#crawlstreambit) as a stream |Reads data from the data source. This method will be called during full and periodic full crawls where all items should be read from the data source and returned to the platform. |
|GetIncrementalCrawlStream |[GetIncrementalCrawlStreamRequest](#getincrementalcrawlstreamrequest) |[IncrementalCrawlStreamBit](#incrementalcrawlstreambit) as a stream |Reads data from the data source. This method is optional and will be called during incremental crawls and returns only the incremental changes in items since last incremental crawl. |

### Connector crawler models

The following are the connector crawler models.

#### GetCrawlStreamRequest

Request model for getting items during crawl.

|Property |Type |Description |
|:----------|:-------------|:----------|
|customConfiguration |[CustomConfiguration](/graph/custom-connector-sdk-contracts-common#customconfiguration) |Provides configuration data for the connector. |
|authenticationData |[AuthenticationData](/graph/custom-connector-sdk-contracts-common#authenticationdata) |Holds the data source access URL and the credentials to access it. |
|crawlProgressMarker |[CrawlCheckpoint](#crawlcheckpoint) |Holds data to identify items that were processed in the last crawl. The connector returns the item's information, and it uses it if the platform crashes during the crawl. |
|Schema |[DataSourceSchema](/graph/custom-connector-sdk-contracts-common#datasourceschema) |Shows the schema of the connection. This property can also be used to set the value. |

#### CrawlStreamBit

Response model that contains the item status indicating success or failure and the indicator/checkpoint for the item being crawled during full or periodic crawl.

|Property |Type |Description |
|:----------|:-------------|:----------|
|status |[OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) |Shows the status of the operation and error details. |
|crawlItem |[CrawlItem](#crawlitem) |Shows a single item crawled from the data source. |
|crawlProgressMarker |[CrawlCheckpoint](#crawlcheckpoint) |Identifies the item crawled from the data source. |

#### GetIncrementalCrawlStreamRequest

Request model for getting items during an incremental crawl.

|Property |Type |Description |
|:----------|:-------------|:----------|
|customConfiguration |[CustomConfiguration](/graph/custom-connector-sdk-contracts-common#customconfiguration) |Provides configuration data for the connector. |
|authenticationData |[AuthenticationData](/graph/custom-connector-sdk-contracts-common#authenticationdata) |Holds the data source access URL and the credentials to access it. |
|crawlProgressMarker |[CrawlCheckpoint](#crawlcheckpoint) |Holds data to identify items that were processed in the last crawl. The connector returns the item's information, and it uses it if the platform crashes during the crawl. |
|schema |[DataSourceSchema](/graph/custom-connector-sdk-contracts-common#datasourceschema) |Shows the schema of the connection. This property can also be used to set the value. |
|previousCrawlStartTimeInUtc |Timestamp |Shows the previous crawl start time in UTC. This value can be used in the first incremental crawl, but subsequent calls should use the checkpoint value. |

#### IncrementalCrawlStreamBit

Response model containing the item, status indicating success/failures if any and the indicator/checkpoint for the item being crawled during incremental crawl.

|Property |Type |Description |
|:----------|:-------------|:----------|
|status |[OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) |Shows the status of the operation and error details. |
|crawlItem |[IncrementalCrawlItem](#incrementalcrawlitem) |Shows a single item crawled from the data source during and incremental crawl. |
|crawlProgressMarker |[CrawlCheckpoint](#crawlcheckpoint) |Identifies the last item crawled from the data source during the last incremental crawl. |

#### ItemType enumeration members for CrawlItem

Enumeration fields for crawl items.

|Member |Value |Description |
|:----------|:-------------|:----------|
|[ContentItem](#contentitem) |0 |Data items with content to ingest. For example: website content. |
|[LinkItem](#linkitem) |1 |Link to a content item that will be used in subsequent crawls. For example: Links to a website or a folder. |

#### CrawlItem

Represents an entity in the data source. The maximum size allowed is 4 MB. For example: a file, a folder or a record in a table. <!--/// Commenting this part because it is not consistent with the rest of the definitions in the doc. If the size is included here, it should be included for every item, property, etc, or add it as a special note with an indication of why is needed here-->

|Property |Type |Description |
|:----------|:-------------|:----------|
|itemId |string |Shows the unique ID that represents the item in the data source. |
|contentItem |[ContentItem](#contentitem) |Shows a data item with content to ingest. For example: the content of a website. |
|linkItem |[LinkItem](#linkitem) |Link to a content item that will be used in subsequent crawls. For example: a link to a website or a folder. |
|itemType |[ItemType](#itemtype-enumeration-members-for-crawlitem) |Shows the type of item being sent. This model should have a **contentItem** or a **linkItem** set and this enumeration field should correspond to that item. |

> [!NOTE]
> * The properties **linkItem** and **contentItem** are mutually exclusive.

#### ItemType enumeration members for IncrementalCrawlItem

Enumeration fields for incremental crawl items.

|Member |Value |Description |
|:----------|:-------------|:----------|
|[ContentItem](#contentitem) |0 |Data items with content to ingest. For example: the content of a website. |
|[LinkItem](#linkitem) |1 |Link to a content item that will be used in subsequent crawls. For example: a link to a website or a folder. |
|[DeletedItem](#deleteditem) |2 |Item that was deleted from the data source and should be deleted from the index. |

#### IncrementalCrawlItem

Represents an entity in the data source. For example: a file, a folder or a record in a table.

|Property |Type |Description |
|:----------|:-------------|:----------|
|itemId |string |Shows the unique ID that represents the item in the data source. |
|contentItem |[ContentItem](#contentitem) |Shows a data item with content to ingest. For example: the content of a website. |
|linkItem |[LinkItem](#linkitem) |Link to a content item that will be used in subsequent crawls. For example: a link to a website or a folder. |
|deletedItem |[DeletedItem](#deleteditem) |Item that is deleted from the datasource and should be removed from the index. If **deletedItem** is set, **contentItem** or **linkItem** can't be set. |
|itemType |[ItemType](#itemtype-enumeration-members-for-incrementalcrawlitem) |Shows the type of item being sent. This model should have a **contentItem** or a **linkItem** set and this enumeration field should correspond to that item. |

> [!NOTE]
> * The properties **linkItem**, **contentItem**, and **deletedItem** are mutually exclusive.

#### ContentItem

Item that holds the content of the data source entity to be ingested. For example: the content of a website.

|Property |Type |Description |
|:----------|:-------------|:----------|
|propertyValues |[SourcePropertyValueMap](#sourcepropertyvaluemap) |Holds the key and values of each property in the item. |
|accessList |[AccessControlList](#accesscontrollist) |Restricts the access to the item to specific users or groups. |
|content |[Content](#content) |Shows the content property of the item that can be used when displaying search results. |

#### LinkItem

Item that acts as a link to another item. These link items will be sent again to connector for recrawl; for example, in a folder content, files will be content items and sub folders will be link items.

|Property |Type |Description |
|:----------|:-------------|:----------|
|metadata |map<string, [GenericType](#generictype)> |Holds the metadata needed by the connector to recrawl the item. |

#### DeletedItem

Represents an item that was deleted from the data source and has to be removed from the index.

#### AccessControlList

Restricts the users that can see the search results.

|Property |Type |Description |
|:----------|:-------------|:----------|
|Entries |repeated [AccessControlEntry](#accesscontrolentry) |Shows the array or collection of access control list entries. |

#### AclAccessType enumeration members

Enumeration members of the access control list type.

|Member |Value |Description |
|:----------|:-------------|:----------|
|None |0 |Indicates the default value: deny. |
|Grant |1 |The entry is for users/groups with access to the item. |
|Deny |2 |The entry is for users/groups with no access the item and overrides grant for any user/group. |

#### AccessControlEntry

Holds individual access control entries.

|Property |Type |Description |
|:----------|:-------------|:----------|
|accessType |[AclAccessType](#aclaccesstype-enumeration-members) |Shows the access type of the entity either grant or deny. |
|principal |[Principal](#principal) |Represents a group or user with defined access. |

#### PrincipalType enumeration members

Enumeration members of the principal type.

|Member |Value |Description |
|:----------|:-------------|:----------|
|PT_None |0 |Indicates the default value: user. |
|User |1 |Type of user. |
|Group |2 |Type of group. |
|Everyone |3 |Special group to grant access to everyone. |
|EveryoneExceptGuests |4 |Special group to grant access to everyone except guests. |

#### IdentitySource enumeration members

Enumeration members of identity source.

|Member |Value |Description |
|:----------|:-------------|:----------|
IS_None |0 |Indicates the default value: Azure Active Directory (Azure AD). |
AzureActiveDirectory |1 |The source of identity is Azure AD. |
External |2 |The source of identity isn't Azure AD. |

#### IdentityType enumeration members

Enumeration members of identity type.

|Member |Value |Description |
|:----------|:-------------|:----------|
|IT_None |0 |Indicates the default value: (Azure ADId). |
|ActiveDirectorySId |1 |SID (On premise security identifier) provided by Active Directory (AD). |
|UserPrincipalName |2 |User principal name ([UPN](/azure/active-directory/hybrid/plan-connect-userprincipalname#what-is-userprincipalname)).  |
|AadId |3 |Azure ADId.|

#### Principal

Structure to store attributes of the principal (user/group).

|Property |Type |Description |
|:----------|:-------------|:----------|
|type |[PrincipalType](#principaltype-enumeration-members) |Type of principal. |
|value |string |Principal value: the value of the SID, UPN, Azure ADId, and so on. |
|identitySource |[IdentitySource](#identitysource-enumeration-members) |The source of identity. |
|identityType |[IdentityType](#identitytype-enumeration-members) |Identity representation type. |
|identitySourceProperties |map<string, string> |Metadata about the identity source. |

#### SourcePropertyValueMap

Map of the source property key and its value in the data source. It stores the property value of each item.

|Property |Type |Description |
|:----------|:-------------|:----------|
|values |map<string, [GenericType](#generictype)> |Holds the key and values of the properties of the item. The key is the property name and the value is property value. For example, file content has properties like title, modifiedDate, and so on. The properties keys will be the properties themselves and their values will be the title of the file and file modified date respectively. |

#### ContentType enumeration members

Enumeration members of content type.

|Member |Value |Description |
|:----------|:-------------|:----------|
|None |0 |Default value |
|Text |1 |Text content type |
|Html |2 |Html content type |
|Binary |3 |Binary content type |
|Bmp |4 |Bmp content type |
|Jpg |5 |Jpg content type |
|Pdf |6 |Pdf content type |
|Png |7 |Png content type |
|Tif |8 |Tif content type |
|UnknownFutureValue |9 |For future-proofing, following Microsoft Graph enumerations. All new enumerations will be added below until a major API version change. |

#### Content

Value of the content property of the item, used to render search results.

|Property |Type |Description |
|:----------|:-------------|:----------|
|contentType |[ContentType](#contenttype-enumeration-members) |Type of the content. |
|contentValue |string |Value of the content property. |

#### CrawlCheckpoint

Identifies the item that was crawled last. It will be saved by the platform and the checkpoint from last successful item batch will be used for resuming crawl if there is a failure or crash. The platform will send the checkpoint in the **GetCrawlStream** API.

|Property |Type |Description |
|:----------|:-------------|:----------|
|pagenumber |uint32 |Shows the page number to mark crawl progress. |
|batchSize |uint32 |Holds the number of items returned in every batch. It has a constant value of 1 because each item is streamed individually. |
|customMarkerData |string |Custom data needed to identify the last item crawled from the data source. |

#### GenericType

Model to hold the supported types of values by the platform in certain fields like source property values. Only one of the following fields must be set.

|Property |Type |Description |
|:----------|:-------------|:----------|
|stringValue |string |Represents a string value.  |
|intValue |int64 |Represents an int64 (long) value. |
|doubleValue |double |Represents a double value. |
|dateTimeValue |google.protobuf.Timestamp |Represents a dateTime value. |
|boolValue |bool |Represents a Boolean value. |
|stingCollectionValue |[StringCollectionType](#stringcollectiontype) |Represents a collection of strings. |
|intCollectionValue |[IntCollectionType](#intcollectiontype) |Represents a collection of int64 (long). |
|doubleCollectionValue |[DoubleCollectionType](#doublecollectiontype) |Represents a collection of double. |
|dateTimeCollectionValue |[TimestampCollectionType](#timestampcollectiontype) |Represents a collection of dateTime. |

#### StringCollectionType

Collection of strings.

|Property |Type |Description |
|:----------|:-------------|:----------|
|values |repeated string |Collection or array of strings. |

#### IntCollectionType

Collection of integer values.

|Property |Type |Description |
|:----------|:-------------|:----------|
|values |repeated int64 |Collection or array of int64 (long) values. |

#### DoubleCollectionType

Collection of double values.

|Property |Type |Description |
|:----------|:-------------|:----------|
|values |repeated double |Collection or array of double values. |

#### TimestampCollectionType

Collection of **DateTime** values.

|Property |Type |Description |
|:----------|:-------------|:----------|
|values |repeated google.protobuf.Timestamp |Collection or array of **dateTime** values. |
