# Personal VCard

This is a simply clean personal VCard API for a CMS system for photographers.

## Installation

### Requirements
<!-- This is the requirement block; it explains which SW/HW you have to grab to run this project

It can be a list-like:
* OSX machine
* XCode 5.X or higher on it
* iPhone/iPad/iPodtouch with iOS5.X or higher
* git installed [@see here]()
* OSX Command Lines Tools installed [@see here]()
* (Optional) a git GUI, like [Tower]() or [SourceTree]() -->

### Directory structure
.
├── config/             Configuration files
├── public/             Web server files (DocumentRoot)
│   └── .htaccess       Apache redirect rules for the front controller
│   └── index.php       The front controller
├── templates/          Twig templates
├── src/                PHP source code (The App namespace)
├── tmp/                Temporary files (cache and logfiles)
├── vendor/             Reserved for composer
├── .htaccess           Internal redirect to the public/ directory
└── .gitignore          Git ignore rules

### Git access
<!-- This is a `HOW-TO` to grab the code by command line:
* `cd your-workspace-folder`
* `touch the-name-of-the-repo`
* `cd the-name-of-the-repo`
* `git clone git://url-of-your-repo.git`
* `open your-workspace-folder` -->

<!-- **NEVER** give/write credentials in a README file. You can add something like:

	For further informations about accessing this repo, please contact @JohnDoe - DAS #A489654 -->

<!-- ### Run the project (Library-case...)
Explain in a list-like how to use this library... -->

<!-- ### Run the project (Standalone-case...)
... or explain in a list-like how to use this standalone:

* Open with `Xcode` the project by double clicking on `my_project.xcodeproj`
* In `Scheme` select `DEBUG`
* In `Target` select your iPhone, previously plugged into your mac
* Click on `Run` button
* On launch, you have a Developer-View, select `FOO Env`
* Do your tests

## Documentation
Here you explain where is the project documentation, and give a link/relative-path if it's possible

Documentation is in the project folder, you just have to go to `/Misc/Documentation/`

## Dev Team
A Thanks-to part, grab your love for your collegues and give the name of all of us !!

* John Doe - manager - City
* Foo Bar - Developer - City
* Bar John - Developer - City

If you want, you can light this file and generate a `AUTHORS.md` and just give a link here like :

For the developer team who work on this project, please see [AUTHORS.md]().

If it's project for a client, you can even add their contacts, phone numbers ... etc !

## Bug Reporting
Explain here how to access to bug reporting databases (URL, restrictions .. etc)

* Go to JIRA instance
* Connect yourself using your DAS
* In `PROJECT` section, select `MY-PROJECT-INSTANCE`
* For any questions about accessing this JIRA instance, please contact @JohnDoe - DAS #A489654

## History
Give a brief history of all **MAJOR**-released-only versions.

#### 3.X
* lorem lipsum
* lorem lipsum

#### 2.X
* lorem lipsum
* lorem lipsum

#### 1.X
* lorem lipsum
* lorem lipsum

For further informations about History, please see [CHANGELOG.md]().

## License
Write down here the copyrights explanation. Below an example:

	Copyright (c) 2014 John Doe and contributors

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
	
Or just give a link to the `LICENCE.md`.

## Cryptographic Software Notice
Optional but be used if you are some encrypted part in your project. Here is an example (Apache Company):

  This distribution may include software that has been designed for use
  with cryptographic software.  The country in which you currently reside
  may have restrictions on the import, possession, use, and/or re-export
  to another country, of encryption software.  BEFORE using any encryption
  software, please check your country's laws, regulations and policies
  concerning the import, possession, or use, and re-export of encryption
  software, to see if this is permitted.  See <http://www.wassenaar.org/>
  for more information.

  The U.S. Government Department of Commerce, Bureau of Industry and
  Security (BIS), has classified this software as Export Commodity 
  Control Number (ECCN) 5D002.C.1, which includes information security
  software using or performing cryptographic functions with asymmetric
  algorithms.  The form and manner of this Apache Software Foundation
  distribution makes it eligible for export under the License Exception
  ENC Technology Software Unrestricted (TSU) exception (see the BIS 
  Export Administration Regulations, Section 740.13) for both object 
  code and source code.

  The following provides more details on the included files that
  may be subject to export controls on cryptographic software:

    Apache httpd 2.0 and later versions include the mod_ssl module under
       modules/ssl/
    for configuring and listening to connections over SSL encrypted
    network sockets by performing calls to a general-purpose encryption
    library, such as OpenSSL or the operating system's platform-specific
    SSL facilities.

    In addition, some versions of apr-util provide an abstract interface
    for symmetrical cryptographic functions that make use of a
    general-purpose encryption library, such as OpenSSL, NSS, or the
    operating system's platform-specific facilities. This interface is
    known as the apr_crypto interface, with implementation beneath the
    /crypto directory. The apr_crypto interface is used by the
    mod_session_crypto module available under
      modules/session
    for optional encryption of session information.

    Some object code distributions of Apache httpd, indicated with the
    word "crypto" in the package name, may include object code for the
    OpenSSL encryption library as distributed in open source form from
    <http://www.openssl.org/source/>.

  The above files are optional and may be removed if the cryptographic
  functionality is not desired or needs to be excluded from redistribution.
  Distribution packages of Apache httpd that include the word "nossl"
  in the package name have been created without the above files and are
  therefore not subject to this notice. -->