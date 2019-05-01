
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailFolder = {
  @odata.type: "microsoft.graph.mailSearchFolder",
  displayName: "Get MyAnalytics",
  includeNestedFolders: true,
  sourceFolderIDs: ["AAMkAGVmMDEzM"],
  filterQuery: "contains(subject, 'MyAnalytics')"
};

let res = await client.api('/me/mailFolders/searchfolders/childfolders')
	.version('beta')
	.post({mailFolder : mailFolder});

```