---
title: "Microsoft Graph connectors SDK best practices"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
description: "Apply best practices when you use the Microsoft Graph connectors SDK."
---

# Microsoft Graph connectors SDK best practices

This article provides best practices to follow when you use the Microsoft Graph connectors SDK to implement a custom connector.

## Using the crawl progress marker

The crawl progress marker acts as an identifier for the particular item sent by the connector that was last processed by the platform. You can implement two types of crawls: periodic full and incremental.

Periodic full crawls get all items in the data source and ingest only the items that are modified or not present in the index. If it doesn't find an item, it deletes it from the index.

Incremental crawls get items added or modified since the last incremental crawl. The connector can also send items to be deleted as a part of this crawl. For the first incremental crawl, the last full crawl's start time is also sent. The connector can optionally use this crawl to fetch items changed only after the last full crawl.

Both periodic full and incremental crawls have their crawl progress markers.

### Usage of the crawl progress marker during periodic full crawls

The SDK sends the crawl progress marker if the previous crawl crashed or a scheduled crawl was missed due to the Microsoft Graph connector agent being offline during periodic full crawls.

If the previous crawl did not crash, you have to crawl the data source from the beginning.

### Usage of the crawl progress marker during incremental crawls

During one incremental crawl, the connector sends the crawl progress marker to the connector platform, and it will continue to do so for the next incremental crawls. The connector can use this crawl to fetch added or modified items after this marker.

## Constructing generic types

The property values of the content item can have a range of data types. Because gRPC doesn't have a construct for generic objects, the SDK includes a [GenericType](/graph/custom-connector-sdk-contracts-connectorcrawler#generictype) structure that can hold any of the supported data types. **GenericType** has the following structure:

```csharp
// Represents a generic type that can hold any supported value
message GenericType {
 // Value of the Generic type
 oneof value {
  // String type value
  string stringValue = 1;

  // Long value
  int64 intValue = 2;


  // Double value
  double doubleValue = 3;

  // DateTime value
  google.protobuf.Timestamp dateTimeValue = 4;

  // Boolean value
  bool boolValue = 5;

  // String collection value
  StringCollectionType stringCollectionValue = 6;

  // Long collection value
  IntCollectionType intCollectionValue = 7;

  // Double collection value
  DoubleCollectionType doubleCollectionValue = 8;

  // DateTime collection value
  TimestampCollectionType dateTimeCollectionValue = 9;
 }
}

// Collection of string
message StringCollectionType {
 // Value of string collection
 repeated string values = 1;
}

// Collection of long
message IntCollectionType {
 // Value of long collection
 repeated int64 values = 1;
}

// Collection of double
message DoubleCollectionType {
 // Value of double collection
 repeated double values = 1;
}

// Collection of DateTime
message TimestampCollectionType {
 // Value of DateTime collection
 repeated google.protobuf.Timestamp values = 1;
}

```

**GenericType** can have one of the following types: **string**, **int64**, **double**, **DateTime**, and **Boolean** or a **collection** of **string**, **int64**, **double**, and **DateTime**.
The following are examples of how to set these types:

```csharp
// Setting string value in generic type
    GenericType stringType = new GenericType
    {
        StringValue = "Hello"
    };

    // Setting int64 value in generic type
    GenericType int64Type = new GenericType
    {
        IntValue = 1000
    };

    // Setting double value in generic type
    GenericType doubleType = new GenericType
    {
        DoubleValue = 12.54
    };

    // Setting dateTime value in generic type
    GenericType dateTimeType = new GenericType
    {
        DateTimeValue = Google.Protobuf.WellKnownTypes.Timestamp.FromDateTime(DateTime.UtcNow)
    };

    // Setting boolean value in generic type
    GenericType boolType = new GenericType
    {
        BoolValue = true
    };

    // Setting string collection value in generic type - Initialize the string collection first, add the values to the string collection and then set it in the generic type
    StringCollectionType stringCollection = new StringCollectionType();
    stringCollection.Values.Add("Value1");
    stringCollection.Values.Add("Value2");
    GenericType stringCollectionType = new GenericType
    {
        StringCollectionValue = stringCollection
    };

    // Setting int64 collection value in generic type - Initialize the int64 collection first, add the values to the int64 collection and then set it in the generic type
    IntCollectionType intCollection = new IntCollectionType();
    intCollection.Values.Add(1234);
    intCollection.Values.Add(5436);
    GenericType intCollectionType = new GenericType
    {
        IntCollectionValue = intCollection
    };

    // Setting double collection value in generic type - Initialize the double collection first, add the values to the double collection and then set it in the generic type
    DoubleCollectionType doubleCollection = new DoubleCollectionType();
    doubleCollection.Values.Add(12.54);
    doubleCollection.Values.Add(34.213);
    GenericType doubleCollectionType = new GenericType
    {
        DoubleCollectionValue = doubleCollection
    };

    // Setting datetime collection value in generic type - Initialize the datetime collection first, add the values to the datetime collection and then set it in the generic type
    TimestampCollectionType dateTimeCollection = new TimestampCollectionType();
    dateTimeCollection.Values.Add(Google.Protobuf.WellKnownTypes.Timestamp.FromDateTime(DateTime.UtcNow));
    dateTimeCollection.Values.Add(Google.Protobuf.WellKnownTypes.Timestamp.FromDateTime(DateTime.UtcNow.AddDays(-1)));
    GenericType dateTimeCollectionType = new GenericType
    {
        DateTimeCollectionValue = dateTimeCollection
    };

```

## Building search schema

The connectors schema has the following restrictions:

- **Property name**: The name of the property can have a maximum of 32 characters and only alphanumeric characters are allowed.
- **Search annotations**:
  * Only properties of type **String** or **StringCollection** can be searchable.
  * Only properties of type **String** can be a content property.
  * Content properties must be searchable.
  * Content properties can't be queryable or retrievable.
  * Refinable property shouldn't be searchable.
  * Refinable property should be queryable and retrievable.
  * Boolean properties can't be refinable.
- **Aliases**: A set of aliases or a friendly name for the property can have a maximum 32 characters and only alphanumeric characters allowed.

## Fetching items during a crawl

The **GetCrawlStream** method is a [server streaming method](https://grpc.io/docs/what-is-grpc/core-concepts/#server-streaming-rpc). It converts each item from the data source into a [CrawlStreamBit](/graph/custom-connector-sdk-contracts-connectorcrawler#crawlstreambit) during the crawl and sends it over the response stream.

To get a good throughput, the connector should retrieve a batch of items from the data source, convert each item to the **CrawlStreamBit**, and send them over the response stream.
The batch size depends on the data source. We recommend 25 as an optimal size to maintain continuous flow of items over the stream.

## Exception handling in connector code
  
All responses from the gRPC calls have an [OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) that indicates whether the operation succeeded or failed, the failure reason, and retry details if there are failures. We recommend wrapping the entire code in a try-catch block. The connector should log all exceptions and send a proper operation status to the platform.

Connection management flows send a response with the **StatusMessage** that appears in the Microsoft 365 admin center. Sending meaningful messages makes it easier to debug the errors on the user interface, and avoid leaving unhandled exceptions.

## Timeouts

All methods in [ConnectionManagementService](/graph/custom-connector-sdk-contracts-connectionmanagement) should complete and return within 30 seconds; otherwise, the platform will return a time-out error message for the request.

## Sending back errors from connector to platform

All responses use the [OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) in the response structure. If any errors occurred, the connectors should use **OperationStatus** to send the failure reason and retry information back to the platform. Use **OperationStatus** to set the errors during crawls if connection-level errors like expired credentials to access data source occur.

The **OperationStatus** structure has three fields that can be used to represent any errors.

### OperationResult

**OperationResult** is an enumeration that can hold the failure reason.

### StatusMessage

**StatusMessage** is a property of [OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) that can store the custom message to show the failure reason that will appear to the admin during the connection setup.
For example, if the credentials are incorrect during the validation with the **ValidateAuthentication** method, the **result** property can be set to [AuthenticationIssue](/graph/custom-connector-sdk-contracts-common#operationresult) and the **statusMessage** property can be set to **Incorrect credentials provided**.
When the **ValidateAuthentication** method is called, this **statusMessage** will be shown to the search admin. During crawls, this scenario will move the connection to failed state, display the authentication error to the admin, and prompt the admin to update the credentials to access the data source.

### RetryDetails

**RetryDetails** allows the connector to resend information to the platform about transient errors during the crawls and use it to repeat the operation.

The retry can be a standard or exponential back-off. The connector can set the pause time, back-off rate, and back-off coefficient and send them back. For example, if the data source is throttled during the crawl, the connector can set the **OperationResult** to **DatasourceError** and send the retry details according to the retry-header in the response headers from the data source.

## Error mapping for OperationResult

The following errors move the connection to failed state:

* OperationResult.AuthenticationIssue

* OperationResult.ValidationFailure

The other operation codes will be treated as transient failures and will be retried in subsequent crawls.

## See also

* [Troubleshooting issues with your connector](/graph/custom-connector-sdk-troubleshooting)
