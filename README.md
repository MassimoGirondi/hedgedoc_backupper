# Hedgedoc backupper

A simple wrapper around [HedgeDoc CLI](https://github.com/hedgedoc/cli) to backup all notes to a local git repository (and optionally pushing to a remote one).

This creates a versioned history of the notes taken at specific intervals, independently from the HedgeDoc internal versioning.

# How to

- Install dependencies. Usually `git`, `unzip`, and `jq`.
    - The commands usually spits out errors about what is missing usually. Read the errors, it's free! :P
- Clone recursively this repository
- Set your options to `config.sh`.
- Login the first time by running `./login.sh --email user@whatever.tld`. See the CLI documentation for further authentication mechanisms.
- Add `do.sh` to a cronjob task.
    * If you use the `git push` automatism, be sure that your system can authenticate to the git server without passwords (e.g. the ssh keys are setup correctly)
- Profit.


# License
The code on this repository is licensed under the GNU Public License v3, see LICENSE to know more.

