﻿using MyCommunityBuilder.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;

namespace MyCommunityBuilder.Client.Services
{
    public class GenericLocalizationClient
    {
        private readonly HttpClient httpClient;

        public GenericLocalizationClient(HttpClient httpClient)
        {
            this.httpClient = httpClient;
        }

        public async Task<IEnumerable<GenericLocalizationKeyValuesDto>> GetGenericLocalization(int LanguageId) =>
            await httpClient.GetFromJsonAsync<IEnumerable<GenericLocalizationKeyValuesDto>>($"Generic?LanguageId={LanguageId}");
    }
}
