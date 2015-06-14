#include <iostream>
#include <vector>
#include <queue>
#include <cstdio>

using namespace std;

queue <int> q;
int u[512];
int n,m;
char x,y,e;
int pi[256];
vector <int> v[512];
int br=0;

int bfs(int x){
    br++;
    u[x] = 1;
    q.push(x);
    while(!q.empty()){
        int t = q.front();
        q.pop();
        for(int i=0;i<v[t].size();i++){
            if(!u[v[t][i]]){
                u[v[t][i]] = 1;
                pi[v[t][i]] = t;
                q.push(v[t][i]);
            }
        }
    }
}

int main()
{
    while(scanf("%c %c", &x, &y)!=EOF){
        scanf("%c", &e);
        n = (int) x;
        m = (int) y;
        v[n].push_back(m);
    }

    bfs((int)('H'));

    char symbol = 'L';
    vector<char> path;
    while(symbol != 'H'){
        path.push_back(symbol);
        symbol = pi[(int)(symbol)];
    }
    path.push_back('H');


    for(int i=path.size()-1; i>=0; i--) {
        printf("%c ", path[i]);
    }

    return 0;
}
