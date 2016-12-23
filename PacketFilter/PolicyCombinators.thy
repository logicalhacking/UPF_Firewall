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

subsection {* Policy Combinators *}
theory PolicyCombinators
imports 
PolicyCore
begin

text{* In order to ease the specification of a concrete policy, we
  define some combinators. Using these combinators, the specification
  of a policy gets very easy, and can be done similarly as in tools
  like IPTables.  *}

definition 
  allow_all_from :: "'\<alpha>::adr net \<Rightarrow> (('\<alpha>,'\<beta>) packet \<mapsto> unit)" where
  "allow_all_from src_net =   {pa. src pa \<sqsubset> src_net} \<triangleleft> A\<^sub>U " 

definition 
  deny_all_from    :: "'\<alpha>::adr net \<Rightarrow> (('\<alpha>,'\<beta>) packet \<mapsto> unit)" where
  "deny_all_from src_net   =  {pa. src pa \<sqsubset>  src_net}  \<triangleleft>D\<^sub>U "
        
definition
  allow_all_to    :: "'\<alpha>::adr net \<Rightarrow> (('\<alpha>,'\<beta>) packet \<mapsto> unit)" where
  "allow_all_to dest_net   = {pa. dest pa \<sqsubset>  dest_net}  \<triangleleft> A\<^sub>U"

definition 
  deny_all_to :: "'\<alpha>::adr net \<Rightarrow> (('\<alpha>,'\<beta>) packet \<mapsto> unit)" where
  "deny_all_to dest_net = {pa. dest pa \<sqsubset> dest_net} \<triangleleft>D\<^sub>U "

definition 
  allow_all_from_to    :: "'\<alpha>::adr net \<Rightarrow> '\<alpha>::adr net \<Rightarrow> (('\<alpha>,'\<beta>) packet \<mapsto> unit)" where
  "allow_all_from_to src_net dest_net = 
                                   {pa. src pa \<sqsubset> src_net \<and> dest pa \<sqsubset> dest_net} \<triangleleft> A\<^sub>U "

definition 
  deny_all_from_to    :: "'\<alpha>::adr net \<Rightarrow> '\<alpha>::adr net \<Rightarrow> (('\<alpha>,'\<beta>) packet \<mapsto> unit)" where
  "deny_all_from_to src_net dest_net =                                    
             {pa. src pa \<sqsubset> src_net \<and> dest pa \<sqsubset> dest_net} \<triangleleft> D\<^sub>U"


text{* All these combinators and the default rules are put into one
  single lemma called @{text PolicyCombinators} to faciliate proving
  over policies.  *}


lemmas PolicyCombinators = allow_all_from_def deny_all_from_def
  allow_all_to_def deny_all_to_def allow_all_from_to_def
  deny_all_from_to_def UPFDefs
  
                         
end
