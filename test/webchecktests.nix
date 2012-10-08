{ nixpkgs ? ../../nixpkgs
, webdsl ? {outPath = builtins.storePath /nix/store/fy8d3qkfhk3k1y10jpdx09q4w43bnh0a-webdsl-9.7pre4063;}
, nixos ? ../../nixos
}:
let
  pkgs = import nixpkgs { system = "i686-linux"; };
  build = appname :
   with import "${nixos}/lib/testing.nix" {system = "i686-linux";} ;
      runInMachineWithX {
        require = [ ./machine.nix ];
        drv = pkgs.stdenv.mkDerivation {
          name = "webdsl-check";
          buildInputs = [pkgs.apacheAntOpenJDK pkgs.oraclejdk pkgs.firefox15Pkgs.firefox webdsl];
          buildCommand = ''
            ensureDir $out
            cp -R ${webdsl}/share/webdsl/webdsl-check/test/succeed-web/ succeed-web/
	
            cd succeed-web
            TOPDIR=`pwd`
            FAILED=""
            export DISPLAY=:0.0
            header "Running ${appname}"
            result=""
            cd $TOPDIR/`dirname ./${appname}`
            FILE=`basename ./${appname} .app`

            echo "Executing 'webdsl test-web $FILE"
            webdsl test-web $FILE 2>&1 || export FAILED="1"
            stopNest
            if test -z "$FAILED"; then
              exit 0
            else
              exit 1
            fi
          '';
        };
      };
  
  list = [	"ac/acdeniedpage-redefinition.app" 
  			"ac/defined-logout-page.app" 
  			"ac/elements-ac-inherit.app" 
  			"ac/generated-login.app" 
  			"ac/logincookie.app" 
  			"ac/override-generated-login.app" 
  			"ac/pointcut.app" 
  			"ac/policy.app" 
  			"ac/renaming-in-rule-issue.app" 
  			"ac/submithiding.app" 
  			"ac/template-rule-copy-ajax.app" 
  			"ac/template-rule-copy-page.app" 
  			"ac/template-rule-copy.app" 
  			"ac/templateactionrule.app"
			"ac/templaterule.app"
			"action-page-sig-conflict.app"
			"action-with-form.app"
			"action-without-form.app"
			"actionclosure.app"
			"ajax-action-return-relocate-goto.app"
			"ajax-button-form-submit.app"
			"ajax-replace-form.app"
			"ajax-url-encoding.app"
			"bidirectional-onetoone.app"
			"built-in-html-wrappers.app"
			"collection-of-collection.app"
			"data-validation/action-validate-prevent-redirect.app"
			"data-validation/ajax-replace-flush.app"
			"data-validation/custom-messages.app"
			"data-validation/default-messages.app"
			"data-validation/dv-ajax-button-ajax-form.app"
			"data-validation/dv-ajax-button-regular-form.app"
			"data-validation/dv-regular-button-ajax-form.app"
			"data-validation/dv-regular-button-regular-form.app"
			"data-validation/error-message-templates-override.app"
			"data-validation/form-check-2.app"
			"data-validation/form-check.app"
			"data-validation/input-bool-prop.app"
			"data-validation/input-data-invariant-in-action.app"
			"data-validation/input-data-invariant-in-page.app"
			"data-validation/input-validate-order.app"
			"data-validation/input-without-label.app"
			"data-validation/nullpointer.app"
			"data-validation/validate-ajax-replace.app"
			"data-validation/validate-ajax-submit.app"
			"data-validation/validate-in-elements.app"
			"data-validation/validate-template-call.app"
			"data-validation/withstylesheet/ajax-render.app"
			"elements-empty.app"
			"elements-multiple-2.app"
			"elements-multiple.app"
			"elements.app"
			"email-empty.app"
			"email-tc-ac.app"
			"email-tc.app"
			"encoding-quotes.app"
			"entity-property-defaults.app"
			"entityversion.app"
			"for-loop-action.app"
			"getTypeString.app"
			"https.app"
			"include.app"
			"input-null-string.app"
			"invoke-broken-page-first.app"
			"js-event.app"
			"label-with-columns.app"
			"listasparam.app"
			"local-template-redef-ac.app"
			"local-template-redef.app"
			"local-template-var-issue.app"
			"logsql-ac-default.app"
			"logsql-ac.app"
			"logsql.app"
			"manual/acpage.app"
			"manual/ajax-form-validation/ajaxvalidation.app"
#			"manual/ajax-form-validation/templates/templates.app"
#			"manual/tutorial-splash/v1/data.app"
#			"manual/tutorial-splash/v1/rootpage.app"
			"manual/tutorial-splash/v1/v1.app"
#			"manual/tutorial-splash/v2/data.app"
#			"manual/tutorial-splash/v2/lib.app"
#			"manual/tutorial-splash/v2/rootpage.app"
#			"manual/tutorial-splash/v2/ui.app"
			"manual/tutorial-splash/v2/v2.app"
#			"manual/tutorial-splash/v3/data.app"
#			"manual/tutorial-splash/v3/invite.app"
#			"manual/tutorial-splash/v3/lib.app"
#			"manual/tutorial-splash/v3/rootpage.app"
#			"manual/tutorial-splash/v3/ui.app"
			"manual/tutorial-splash/v3/v3.app"
#			"manual/tutorial-splash/v4/ac.app"
#			"manual/tutorial-splash/v4/data.app"
#			"manual/tutorial-splash/v4/invite.app"
#			"manual/tutorial-splash/v4/lib.app"
#			"manual/tutorial-splash/v4/rootpage.app"
#			"manual/tutorial-splash/v4/ui.app"
			"manual/tutorial-splash/v4/v4.app"
			"mimetype.app"
			"name-property.app"
			"navigate-null-arg.app"
			"navigate-null.app"
			"nested-template-ref-arg.app"
			"output-collection.app"
			"override-page.app"
			"override-template.app"
			"placeholder-ajax-call.app"
			"placeholder-attribute.app"
			"placeholder-replace-generated-id.app"
			"query-extraction.app"
			"radio.app"
			"ref-arg-ajax-ac.app"
			"ref-arg-ajax-pass-on.app"
			"ref-arg-ajax.app"
			"ref-arg-classes.app"
			"ref-arg-collection.app"
			"ref-arg-global.app"
			"ref-arg-multiple-dereferences.app"
			"ref-arg-of-ref-prop.app"
			"ref-arg-page.app"
			"ref-arg-prop.app"
			"ref-arg.app"
			"render-template-function-local-redef.app"
			"render-template-function.app"
			"rendertemplate-elements.app"
			"request-log-entry-ac.app"
			"request-log-entry.app"
			"requestPage.app"
			"search/advanced-search.app"
			"search/embedded-search.app"
			"search/search-namespaces.app"
			"search/simple-search.app"
			"section-nesting.app"
			"securitycontext-property-ac-rule-arg-conflict.app"
			"span.app"
			"supercalls.app"
			"template-redef-elements.app"
			"template-redef-with-vars.app"
			"template-redef.app"
			"type-define-date-format.app"
			"type-define.app"
			"types/bool-ajax-validate.app"
			"types/bool.app"
			"types/checkbox-set.app"
			"types/email.app"
			"types/entity.app"
			"types/file.app"
			"types/float-ajax-validate.app"
			"types/float.app"
			"types/inline.app"
			"types/input-reference-property.app"
			"types/input.app"
			"types/inputajax.app"
			"types/int-ajax-validate.app"
			"types/int.app"
			"types/label.app"
			"types/list-input-allowed-subclass-bug.app"
			"types/list-input-multiple-bug.app"
			"types/local-var.app"
			"types/long-ajax-validate.app"
			"types/long.app"
			"types/sdfinput.app"
			"types/secret.app"
			"types/select-ajax-validate.app"
			"types/set.app"
			"types/string-types-ajax-validate.app"
			"types/string.app"
			"types/submit.app"
			"types/text.app"
			"types/url.app"
			"types/validate-built-in-template.app"
			"types/wikitext.app"
			"validate-false-and-flush-arg.app"
			"validate-false-and-flush.app"
			"validate-false-and-query.app"
			"with-refs.app"
			"with-vars.app"
			"with.app"
			"withtest1.app"
			"withtest2.app"
			"withtest3.app"
				"withtest4.app"];
	  
	  jobs = pkgs.lib.listToAttrs (map (f: pkgs.lib.nameValuePair (pkgs.lib.replaceChars ["/"] ["_"] f) (build f)) list);
	
	in jobs
