" embedded puppet template (EPP) syntax file
" Filename:    epp.vim
" Language:    embedded puppet template (EPP) file
" Maintainer:  Mate Farkas <mate.farkas@masabi.com>
" URL:         https://github.com/farkasmate/epp-syntax-vim
" Last Change: 2017-09-29
" Version:     1.0

syntax include @PUPPET syntax/puppet.vim

syntax region eppNonPrintingTag matchgroup=eppTagSeparator start="<%-\{0,1\}"   end="-\{0,1\}%>"   contains=@PUPPET
syntax region eppPrintingTag    matchgroup=eppTagSeparator start="<%="          end="-\{0,1\}%>"   contains=@PUPPET
syntax region eppParameterTag   matchgroup=eppTagSeparator start="<%-\{0,1\} |" end="| -\{0,1\}%>" contains=eppType,puppetVariable,puppetParamSpecial,puppetParamDigits,puppetString
syntax region eppCommentTag     matchgroup=eppTagSeparator start="<%#"          end="-\{0,1\}%>"

syntax keyword eppType String Integer Float Numeric Boolean Array Hash Regexp Undef Default contained
syntax keyword eppType Resource Class contained
syntax keyword eppType Scalar Collection Variant Data Pattern Enum Tuple Struct Optional Catalogentry Type Any Callable contained

highlight link eppTagSeparator PreProc
highlight link eppCommentTag   Comment
highlight link eppType         Type

