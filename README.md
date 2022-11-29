## What is this?

By default Codespaces only allow you to edit the repository. So I made this to open a codebase with this repository, easily install all the tools I need. Then I can also start working on other repositories.

> Kind of a loophole, let's say you do not want to use an organisation credit to open codespace. You can instead spin up general purpose machine, and clone the project you want to work on and continue with your life.

By default all directories visible by the editor is at `/workspaces/sandbox`. So after you spin-up a server, delete `.git` of Sandbox repository and you are good to go.

<br/>

### Why is Zerotier installed?

Well, one of the project I am working with does not work well with built-in port forwarding from Codespaces. So instead, I setup Zerotier network, join that on the spin-up machine to access my development server.

</br>

## Todo

- [ ] Write script to setup security tools for basic HackTheBox machine.
