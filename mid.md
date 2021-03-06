

![plot of disk usage](disk-usage.svg)

## Documentation

### Using the corpora

Accessing bdatasets requires UW CSE department server access (e.g., to
the machines `{recycle,bicycle,tricycle}@cs.washington.edu`) so that they can
view the department filesystem. The bdatasets directory is located on the
department filesystem at `/projects/bdata/datasets`. Anyone with a UW CSE account
can log onto the department servers and view the files there. (For those
without a UW CSE account, see the [access outside UW CSE
section](#access-outside-uw-cse).)

The data are read-only (this is enforced by our crawler) so that they stay
in a known, clean state. To work with files from the corpora, please copy them
to a local directory, e.g., with `scp`.

### dataset structure

One of the goals of this project is to have a consistent directory structure
across all of the corpora we track to give a smooth experience browsing through
them. There is a detailed description of this structure [below](#dataset-structure).

### Adding a new dataset

`#TODO` Until he has time to automate it, just email Mike 😛

### Restricted access

Some corpora require signing a form and sending it to the authoring institution
to be cleared for access. Others simply have highly restrictive licenses we
must comply with; we do so by ensuring each users reads the agreement we signed
when purchasing the dataset.

To honor these contracts, we restrict access to certain corpora by narrowing
the unix group that has read privileges. For such corpora, regrettably, you
must jump through a hoop to use them.

Detailed instructions for gaining access to each restricted access dataset are
linked to in the table below.
