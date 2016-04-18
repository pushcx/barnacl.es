###Barnacles Rails Project

This is the source code to the site operating at [https://barnacl.es](https://barnacl.es).
It is based on and closely follows the codebase behind [https://lobste.rs](https://lobste.rs), available on [GitHub](https://github.com/jcs/lobsters).
If you want to run a news site, you're better off forking from Lobsters rather than Barnacles,
but you might find the early commits useful for configuration or if using Postgresql.

Unlike Lobsters, site-specific content like copy and styling are commited (to `master`).
The `lobsters` branch clones `jcs/master`.
Feature/fix branches are based on `losbters` and PR'd to `jcs/master`;
accepted PRs are merged from `lobsters`,
rejected PRs are dropped or merged from the local branch.

 * E-mail Peter at peter@valent.io for security-related issues
 * [File a bug](https://github.com/pushcx/barnacl.es/issues) for non-security bugs or upstream on [Lobsters](https://github.com/jcs/lobsters/issues) if you’re sure it affects any Lobsters news site
 * [Send Peter a message](https://barnacl.es/messages?to=pushcx) for administrative and moderation things
 * Submit a [meta](https://barnacl.es/t/meta) post for feature requests (including new tags) to let the community discuss
