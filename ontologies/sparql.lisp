;; Copyright Sony Computer Science Laboratory - Paris
;;           Sofia Baroncini
;;           Luc Steels
;;           Remi van Trijp

;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at

;;     http://www.apache.org/licenses/LICENSE-2.0

;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.
;;=========================================================================

(in-package :art-network)

(defun sparql-query-kb-labels (list-of-labels)
  "Search for entries with a list of labels."
  (format nil "prefix kb: <https://w3id.org/simulation/data/> 
               prefix sim: <https://w3id.org/simulation/ontology/> 

               SELECT DISTINCT ?subject 
                      WHERE { VALUES (?label) { ~{(~s)~} }
                              ?subject rdfs:label ?label . }"
          list-of-labels))
;; (sparql-query-kb-labels '("Venus" "Aphrodite/Venus"))
;; (kb-sparql-query (sparql-query-kb-labels '("Venus" "Aphrodite/Venus")))
