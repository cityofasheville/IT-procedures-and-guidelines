# Open Data Governance & Operational Guidelines
#### City of Asheville, NC

## Background
On October 13, 2015 the Asheville City Council adopted a [resolution](http://coablog.ashevillenc.gov/wp-content/uploads/2016/02/Resolution-No.-15-189.pdf) “directing the City Manager to establish an open data policy for the City of Asheville for sustaining public data availability using open data standards.” That resolution outlines high-level requirements for the City of Asheville's open data efforts.

The current site provides more detailed documentation on the implementation of the City's open data program following and building on the [initial technical plan](https://github.com/cityofasheville/open-data-portal-technical-plan-2016) published in October, 2016.

## Review of These Guidelines
The [open data policy](http://coablog.ashevillenc.gov/wp-content/uploads/2016/02/Resolution-No.-15-189.pdf) mandates that City staff report on open data policy implementation to the City Council Governance committee every six months through 2017 and annually thereafter. At minimum these guidelines are reviewed and updated by staff before each such report.

That said, our intention is to continuously evaluate and improve our open data implementation and we invite public scrutiny and engagement at any time. __If you have a comment, suggestion, or criticism, please file an issue [here](https://github.com/cityofasheville/open-data-governance-and-ops-guidelines/issues)__.

## Open Data Maintenance Schedule
Publication of datasets on our open data infrastructure implies a commitment to maintaining their "integrity and usefulness" as directed by the City Council. In practical terms, this means that updates of the data occur automatically or as a regular part of a City process. In the vast majority of cases, datasets are updated automatically every night from internal City systems. In a few cases (such as the [annual proposed budget](http://data.ashevillenc.gov/datasets/6dbc7cc5c7614003a388a614124f00fb_1)), update is carried out on a less frequent schedule aligned with the actual purpose of the data.

## Technical Standards
The City of Asheville is committed to using established standards wherever possible in order to support interoperability.

### API Standards
There is near-universal consensus that the current standard for the delivery of raw, machine-readable datasets is a [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) (REpresentational State Transfer) application programming interface (API) that returns data in either a comma-separated-value (CSV) or a Javascript Object Notation (JSON) format. The REST API is commonly supplemented by the ability to simply download the dataset as a file in either of the above formats. The [City of Asheville open data portal](http://data.ashevillenc.gov/) supports both delivery methods and both formats.

The new [GraphQL standard](http://graphql.org/) released by Facebook in 2015 is seeing rapid adoption as a powerful alternative to REST that better reflects the relationships between different datasets, provides access to the underlying schema,  and offers greater control to data clients over what information should be delivered. We are building a second, parallel API to our open datasets at [https://data-api1.ashevillenc.gov/graphql](https://data-api1.ashevillenc.gov/graphql). That API server also supports the GraphiQL interactive exploration tool at [https://data-api1.ashevillenc.gov/graphiql](https://data-api1.ashevillenc.gov/graphiql).

### Data Standards
TBD

## Data Governance

### Governance Process
TBD

![Asheville Data Governance Process](./assets/coa_data_governance_framework.png "Asheville Data Governance Process")

### Quality Control
