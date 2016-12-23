(*****************************************************************************
 * Copyright (c) 2005-2010 ETH Zurich, Switzerland
 *               2008-2015 Achim D. Brucker, Germany
 *               2009-2016 Université Paris-Sud, France
 *               2015-2016 The University of Sheffield, UK
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *
 *     * Redistributions in binary form must reproduce the above
 *       copyright notice, this list of conditions and the following
 *       disclaimer in the documentation and/or other materials provided
 *       with the distribution.
 *
 *     * Neither the name of the copyright holders nor the names of its
 *       contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************)

section {* A Simple DMZ Setup *}
theory 
  DMZ
imports 
  DMZDatatype
  DMZInteger
begin

text{* This scenario is slightly more complicated than the SimpleDMZ
one, as we now also model specific servers within one
network. Therefore, we cannot use anymore the modelling using
datatype synonym, but only use the one where an address is modelled as an
integer (with ports).

The scenario is the following:

\begin{labeling}{Networks:}
\item[Networks:]
  \begin{itemize}
  \item Intranet (Company intern network)
  \item DMZ (demilitarised zone, servers, etc), containing
     at least two distinct servers ``mail'' and ``web''
  \item Internet (``all others'') 
  \end{itemize}
\item[Policy:]
  \begin{itemize}
  \item allow http(s) from Intranet to Internet
  \item deny all trafic from Internet to Intranet
  \item allo imaps and smtp from intranet to mailserver
  \item allow smtp from Internet to mailserver
  \item allow http(s) from Internet to webserver 
  \item deny everything else
  \end{itemize}
  
\end{labeling}
*}

end
