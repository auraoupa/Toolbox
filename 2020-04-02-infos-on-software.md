Julien LeSommer :

> Mon impression, comme discuté la semaine dernière, c’est que notre réseau de petites entreprises du domaine oceano spatiale et opérationnel a un intérêt très clair à définir des approches cohérentes sur ces questions de PI liée aux logiciels.
>
> Je crois par contre que le diable est dans les details : on peut partager une vision commune sur les ambitions en terme de logiciel et de positionnement sur la PI mais, en pratique, chaque entreprise est amenée à lâcher du lest dans le cadre de contrats spécifiques avec des partenaires spécifiques.
>
> Bref, je pense qu’on a intérêt à échanger/s’accorder sur deux aspects :
>
> 1\. La vision idéale commune, qui peut éventuellement à terme s’incarner dans une charte partagée. Plus concrètement, juste échanger sur les pratiques (type de licences libres, modalités de diffusion des codes, manière d’aborder les contributions extérieures sur nos codes etc...).
>
> 2\. Les positionnements particulier concernant nos grands partenaires (CNES, ESA, CMEMS,...). Il s’agit ici de faire en sorte d’aligner nos pratiques (et surtout les clauses de PI) dans le cadre des contrats avec chacun de ces partenaires. Bref, faire en sorte qu’ODL et ON ait un discours cohérent au moment du montage de leurs contrats.
>
> Une fois fait cet état des lieux, échanger avec Gerald D. serait évidemment utile.

Lucile Gaultier :

> Nous avons abouti à la conclusion \
> \- qu'un outil fort benéficie des contributions exterieures \
> \- que l'on fera toujours appel à nous car la manipulation de la\
> majorité de nos outils nécessite une expertise. A nous de montrer que\
> nous sommes les plus à mêmes de continuer leur développement. \
> \
> Je pense que dans notre domaine ce n'est pas tant un problème. Notre\
> expertise est essentiel pour utiliser et faire évoluer correctement nos\
> outils.

Notes transmises par Lucile Gaultier (Ocean Data Lab) sur une formation 'open source license' : 

Rights\
======\
\
Software is governed by two types of rights: moral rights and economic rights.\
\
Moral rights:\
\- authorship of the work\
\- respect of the work (integrity)\
\- withdrawal of the work\
\
Economic rights are equivalent to ownership.\
\
By default only the author possesses all these rights while the users have none, meaning that the author as full discretion to decide how users may use\
the software.\
\
Economic rights expire 70 years after the death of the author or after the first publication in case there are several authors.\
\
Ownership can be transferred: in this case the owner relinquishes his economic rights in favor of another entity.\
These rights can also be granted: the owner shares some of his rights and allows users to exploit his software under certain conditions.\
\
The author always retains moral rights in theory, but the industry has had the law amended to add exceptions in the software development domain: in most contracts of employment, the developer only keeps authorship while the employer benefits from the rights of respect of the work and withdrawal. \
\
Copyright is a concept from anglo-saxon law that corresponds to economic rights. Its mention in a file does not affect the authorship (which is a moral right): one can (and should) therefore mention both the name of the person who wrote the code and the copyright.\
\
In subcontracting contracts, the client may request that the subcontractor assign him the economic rights to the code but this must appear explicitly in the contract.\
It is necessary to be vigilant because this mention can be made in an annexed document referenced in the contract, like a convention or a framework contract.\
\
Free software\
=============\
\
A software is said "free" if it grants users the following rights:\
\- use\
\- study (i.e. access to source code)\
\- modify\
\- distribute\
\
The rights granted to users are defined by the licence under which the software is distributed. Note that a software can be distributed under several licenses. \
\
There can be no restriction regarding how the software will be used: if the license contains clauses prohibiting the use in a specific context ("no commercial use", "research and educational only", etc...) then the software is not free.\
\
Freeing a software\
==================\
\
Why?\
\- to affirm the authorship of the work\
\- to affix the copyright\
\- to get more visibility\
\- to get a larger user base\
\- to appeal external contributors

\
Using a custom license is strongly discouraged because users will have to take legal advice to interpret and to check their compliance with all the clauses.

\
Instead it is recommended to use well-known licenses such as the ones acknowledged by the OSI (Open Source Initiative) and the FSF (Free Software Foundation), two entities that defined a list of criteria that software must satisfy in order to be considered "free".

\
Licenses recognized by the OSI are generally preferred over those supported by the FSF because the OSI certification process is better formalized (when ESA requests free software, it uses the OSI definition).\
\
Most free (FSF) licenses are open source (OSI) and vice versa.\
\
Beware, freeware and shareware are not free because there is no access to the source code.\
The economic model of free software is based on sales/sponsorship and service models but assumes that other companies will be fair play.\
The free software model is all the more relevant as the software requires expertise because it reduces the risk of an hostile takeover of the product by another company and justifies the elaboration of service and training offers.\
\
Licenses\
========\
\
There are three families of licenses:\
 - permissive\
 - weakly diffusive\
 - highly diffusive\
\
It is not always possible to use software components to build a solution if their licenses do not belong to the same family: it is therefore important to list all dependencies to ensure that the chosen license is compatible.\
\
It is possible to check license terms on <https://tldrlegal.com> or <https://choosealicense.com>\
\
Preferred licenses for each family:\\

* permissive: Apache is the strongest from a legal point of view and clearly distinguishes between license and ownership/copyright (unlike MIT and BSD-like licenses)
* weakly diffusive: GNU LGPLv3 (Lesser General Public License) or EPL (Eclipse Public License) if one of the component also has an Eclipse license
* highly diffusive: GNU GPLv3 (General Public License) or GNU AGPLv3 (Affero General Public License)

  It should be noted that LGPL and AGPL are built upon the GNU GPL but add some exceptions: if they are used, the definition of the GPL must be provided along with the LGPL or AGPL addendum.\
  \
  The obligation trigger for diffusive licenses is usually the distribution of modified software: as long as the free software is used, studied or modified but not distributed, the user does not have to provide his source code.\
  However, a license derived from the GPL was created to protect free software from indelicate users who try to bypass the distribution clause by offering remote access to the software (using webservice or SaaS platforms) without distributing it. The obligation trigger for this license, the AGPL, is not only the distribution of the software but also its availability in the form of remote services.\
  \
  Highly diffusive licenses offer the best guaranteed returns but should be reserved to cases of monopoly or technological advance on competition.

These licenses "spread" in the sense that a solution based on a software which has a highly diffusive license *must* adopt the same license.

Weekly diffusive licenses are particularly suitable for libraries: it is possible to integrate them into another software without requiring this software to adopt the same license as the library. *But* any change or improvement on the code of the library itself must be shared back.

License choice and strategy for external contributions may influence the architecture of a software.\
The Open Core model is an example: the software has a core (framework/application/...) released under a free license and can be extended using modules which are made available with other types of licenses.

This development model is very flexible but it requires some rigor in order to \
remain viable over time: the functionalities offered by the core (free) must always be more important than those provided by the modules (potentially proprietary/closed-source/requiring a fee), otherwise the free users community will lose interest in the project.

Note: contrary to the anglo-saxon contracts, the nullity of a clause does not cancel the entire license, only the right attached to the clause in question.\
\
Contributing to other projects\
==============================\
It is important to establish traceability of decisions regarding contributions that employees do on projects external to the company in order to avoid leaks of intellectual property but also to legally protect contributing employees.\
\
Accepting external contributions\
================================\
For one-off contributions, it is easier to ask for a software grant.

\
For repeated contributions, prefer a CLA (Contributor License Agreement), which is composed of two parts: the ICLA (Individual Contributor License Agreement) and the CCLA (Company Contributor License Agreement). The ICLA must be signed by the contributing employee and the CCLA by his employer to ensure that the contribution has been approved by the holder of the economic rights.

\
Contributions may also give rise to rights transfers (the contributor relinquishes all rights except authorship), but this practice is not adapted for projects managed by private companies (it would be akin to working for the company, for free).

\
Note: in case of dual licensing or if it has been decided to switch to a new license which is incompatible with the previous one, be very careful about contributed code whose ownership has not been transferred to the project. \
In such cases it is necessary to make sure that the contributed code is available under a compatible license or to ask the contributors if they agree to the license change. If they don't, their contributions must be removed from the project, potentially breaking the software and causing the removal of major features.