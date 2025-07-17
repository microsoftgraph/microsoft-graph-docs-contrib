---
title: "Test your Microsoft 365 Copilot connector"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: search
description: "Follow the steps in this article to test the custom connector you built using the Copilot connectors SDK."
ms.date: 11/07/2024
---

# Test your Copilot connector

You can use the [TestApp utility](/graph/custom-connector-sdk-testapp) to test your Microsoft 365 Copilot connector (formerly Microsoft Graph connector). This is a console application that is used to test connector before deployment. It will not create any connections or ingest any data.

Use the following steps to test your connector:

1. Update the ConnectionInfo.json file with the connector ID and data source path, and set **AuthenticationKind** to `null`. This file is located in the following folder: C:\Program Files\Graph connector agent\TestApp\Config.

    a. The provider ID is generated for each project and is located in the ConnectorInfoServiceImpl.cs file.
    
    ![Screenshot of the ConnectorInfoServiceImpl.cs file showing the location of the Provider ID.](images/connectors-sdk/providerid.png)

    b. The datasource path is the path where you downloaded the ApplianceParts.csv file.

    c. You can set **AuthenticationKind** to `null` because the connector is using anonymous auth.

    ```json
    {
      // All these configs are only required to test locally
      "id": "TestGrpcConnector", // ConnectionId. Must be unique for a tenant. Change this for each crawlTest
      "name": "TestGrpcConnector", // name of connection
      "description": "\<Connection description>",
      "configuration": {
        "providerId": "a1c127ed-29ce-47fb-ad4a-8836871922ea", //Enter your ConnectorUniqueId
        "scheduleSetting": {
          "fullSyncInterval": 30 // the value is in seconds. Decrease this to run consecutive tests on the same connectionId
        },
        "CredentialData": {
          "Path": "D:\\ApplianceParts.csv",
          "AuthenticationKind": "Anonymous", // Authentication kind which connector supports eg: basic, windows, anonymous, oauth2.client_credentials
          "CredentialDetails": null // If AuthenticationKind is set to something different, use { "loginId": "", "loginSecret": "" } here
    
        },
        "ProviderParameters": null // This parameter will have the data/configuration given during connection creation time. Will be present in JSON serialized format
      }
    }

    ```


2. Update the CustomConnectorPortMap.json file with the port mapping of the connector. This file located in the following folder C:\Program Files\Graph connector agent. Update this file with an entry for the connector ID (which you identified in the ConnectorInfoServiceImpl.cs file in the previous step) and the port, which is defined in the ConnectorServer.cs file.

![Screenshot of the ConnectorServer.cs file showing the port location](images/connectors-sdk/portmap.png)

```json
    {
      "a1c127ed-29ce-47fb-ad4a-8836871922ea": "30303" //Update your ConnectorUniqueId and Port information
    }

```

3. Update the manifest.json file located in the following folder: C:\Program Files\Graph connector agent\TestApp\Config:

```json
    {
    // This is your unique connector ID/provider ID.
    "connectorId": "a1c127ed-29ce-47fb-ad4a-8836871922ea", //Update your ConnectorUniqueId here
    
    // This is a list of all supported auth types. Remove the ones that the connector does not support.
    "authTypes": [ "Anonymous" ]   
    }

```

4. Run GraphConnectorAgentTest.exe, which is located in the C:\Program Files\Graph connector agent\TestApp folder.

5. Make sure the connector is running.

6. Test the connector using options all the options (1, 2, 3, 4, 5) in GraphConnectorAgentTest.exe.

## Next steps

* [Deploy your connector](/graph/custom-connector-sdk-sample-hosting)
