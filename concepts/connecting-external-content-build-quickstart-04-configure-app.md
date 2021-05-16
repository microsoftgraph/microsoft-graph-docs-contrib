---
title: "Configure the app"
description: "Configure the app"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
---
<!---# Configure the app--->

1. Open your command line interface (CLI) in the directory where PartsInventoryConnector.csproj is located.
2. Run the following command to initialize the user secrets for the project.

```dotnetcli
      dotnet user-secrets init`
```

3. Run the following commands to store your app ID, app secret, and tenant ID in the user secret store.
  
```dotnetcli
  dotnet user-secrets set appId &quot;YOUR\_APP\_ID\_HERE&quot; ([Step 5](#ApplicationID))
  dotnet user-secrets set appSecret &quot;YOUR\_APP\_SECRET\_HERE&quot; ([Step 13](#CertificatesAndsecrets))
  dotnet user-secrets set tenantId &quot;YOUR\_TENANT\_ID\_HERE&quot; ([Step 6](#DirectoryID))
```
