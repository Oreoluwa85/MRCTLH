import urllib, urllib2, time, json

# install a custom handler to prevent following of redirects automatically.
class SmartRedirectHandler(urllib2.HTTPRedirectHandler):
    def http_error_302(self, req, fp, code, msg, headers):
        return headers

opener = urllib2.build_opener(SmartRedirectHandler())
urllib2.install_opener(opener);

parameters = {
              'seqdb':'nr',
              'seq':'>Seq\nMSYAEKPDEITKDEWMEKLNNLHVQRADMNRLIMNYLVTEGFKEAAEKFRMESGIEPSVDLETLDERIKIREMILKGQIQEAIALINSLHPELLDTNRYLYFHLQQQHLIELIRQRETEAALEFAQTQLAEQGEESRECLTEMERTLALLAFDSPEESPFGDLLHTMQRQKVWSEVNQAVLDYENRESTPKLAKLLKLLLWAQNELDQKKVKYPKMTDLSKGVIEEPK'
             }
enc_params = urllib.urlencode(parameters);

#post the seqrch request to the server
request = urllib2.Request('http://hmmer.janelia.org/search/jackhmmer',enc_params)

#get the url where the results can be fetched from
results_url = urllib2.urlopen(request).getheader('location')

# modify the range, format and presence of alignments in your results here
res_params = {
              'output':'text',
              'range':'1,2'
             }

# add the parameters to your request for the results
enc_res_params = urllib.urlencode(res_params)
modified_res_url = results_url + '?' + enc_res_params

# send a GET request to the server
results_request = urllib2.Request(modified_res_url)
data = urllib2.urlopen(results_request)

# print out the results
print data.read()
print results_url
print modified_res_url
print enc_params
