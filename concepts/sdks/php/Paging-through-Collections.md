Some queries against Microsoft Graph return multiple pages of data either due to server-side paging or due to the use of the $top query parameter to specifically limit the page size in a request. When a result set spans multiple pages, Microsoft Graph returns an @odata.nextLink property in the response that contains a URL to the next page of results.

In the PHP SDK, we expose this with a custom Request method called `createCollectionRequest` which works similarly to `createRequest`:

```php
$docGrabber = $graph->createCollectionRequest("GET", "/me/drive/root/children")
			        ->setReturnType(Model\DriveItem::class)
			        ->setPageSize(2);
$docs = $docGrabber->getPage();

foreach ($docs as $doc){
	$docArray[] = $doc->getName();
}
```
This eliminates the need to work with the @odata.nextLink directly.

If you would like to merge the full results into a collection, you can use $isEnd to iterate through all the results:

```php
while (!$docGrabber->isEnd()) {
  $docs = array_merge($docs,$docGrabber->getPage());
}
```

