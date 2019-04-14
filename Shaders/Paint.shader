// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32687,y:32911,varname:node_3138,prsc:2|emission-2713-RGB,alpha-587-OUT,clip-587-OUT;n:type:ShaderForge.SFN_Tex2d,id:2713,x:31472,y:33241,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4296ac6225f3e4646b5a6c5f0d0186a8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2376,x:31736,y:32728,ptovrint:False,ptlb:Brush,ptin:_Brush,varname:node_2376,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c896ebfd2f1e09e4a853bbd73f65d78f,ntxv:0,isnm:False|UVIN-6786-OUT;n:type:ShaderForge.SFN_Tex2d,id:955,x:31724,y:33490,ptovrint:False,ptlb:TargetImage,ptin:_TargetImage,varname:node_955,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2298-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:9540,x:30610,y:32675,varname:node_9540,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:8303,x:31294,y:32886,varname:node_8303,prsc:2|A-9540-UVOUT,B-7134-OUT;n:type:ShaderForge.SFN_RgbToHsv,id:8453,x:32064,y:32923,varname:node_8453,prsc:2|IN-2376-RGB;n:type:ShaderForge.SFN_Add,id:6786,x:31568,y:32948,varname:node_6786,prsc:2|A-8303-OUT,B-2402-OUT;n:type:ShaderForge.SFN_If,id:3740,x:32310,y:33150,varname:node_3740,prsc:2|A-8453-VOUT,B-737-OUT,GT-2713-A,EQ-5726-OUT,LT-5726-OUT;n:type:ShaderForge.SFN_Vector1,id:737,x:31871,y:33133,varname:node_737,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:5726,x:31902,y:33350,varname:node_5726,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:9805,x:29576,y:33161,ptovrint:False,ptlb:x,ptin:_x,varname:node_9805,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2356,x:29378,y:33303,ptovrint:False,ptlb:y,ptin:_y,varname:node_2356,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:2402,x:31311,y:33241,varname:node_2402,prsc:2|A-4801-OUT,B-4500-OUT;n:type:ShaderForge.SFN_Add,id:4500,x:31097,y:33470,varname:node_4500,prsc:2|A-7220-OUT,B-1879-OUT;n:type:ShaderForge.SFN_Multiply,id:1879,x:30888,y:33559,varname:node_1879,prsc:2|A-326-OUT,B-5661-OUT;n:type:ShaderForge.SFN_Add,id:4801,x:31097,y:33269,varname:node_4801,prsc:2|A-7220-OUT,B-4220-OUT;n:type:ShaderForge.SFN_Multiply,id:4220,x:30765,y:33153,varname:node_4220,prsc:2|A-9500-OUT,B-5661-OUT;n:type:ShaderForge.SFN_Vector1,id:7220,x:30420,y:33446,varname:node_7220,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:7443,x:30158,y:33036,ptovrint:False,ptlb:BrushSize,ptin:_BrushSize,varname:node_7443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Vector1,id:4517,x:30315,y:32791,varname:node_4517,prsc:2,v1:11;n:type:ShaderForge.SFN_Subtract,id:7134,x:30686,y:32919,varname:node_7134,prsc:2|A-4517-OUT,B-7443-OUT;n:type:ShaderForge.SFN_Multiply,id:5661,x:30420,y:33205,varname:node_5661,prsc:2|A-7134-OUT,B-5349-OUT;n:type:ShaderForge.SFN_Vector1,id:5349,x:30182,y:33370,varname:node_5349,prsc:2,v1:-1;n:type:ShaderForge.SFN_SwitchProperty,id:8034,x:29896,y:33614,ptovrint:False,ptlb:Painting,ptin:_Painting,varname:node_8034,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4438-OUT,B-4721-OUT;n:type:ShaderForge.SFN_Append,id:4721,x:29888,y:33286,varname:node_4721,prsc:2|A-9805-OUT,B-2356-OUT;n:type:ShaderForge.SFN_Code,id:9500,x:30346,y:33592,varname:node_9500,prsc:2,code:cgBlAHQAdQByAG4AIABYAFkALgB4ADsA,output:0,fname:GetX,width:247,height:114,input:1,input_1_label:XY|A-8034-OUT;n:type:ShaderForge.SFN_Vector2,id:4438,x:29457,y:33516,varname:node_4438,prsc:2,v1:-0.5,v2:-0.5;n:type:ShaderForge.SFN_Code,id:326,x:30402,y:33796,varname:node_326,prsc:2,code:cgBlAHQAdQByAG4AIABYAFkALgB5ADsA,output:0,fname:GetY,width:247,height:112,input:1,input_1_label:XY|A-8034-OUT;n:type:ShaderForge.SFN_If,id:587,x:32285,y:33362,varname:node_587,prsc:2|A-955-A,B-5726-OUT,GT-2713-A,EQ-3740-OUT,LT-3740-OUT;n:type:ShaderForge.SFN_TexCoord,id:2298,x:31195,y:33777,varname:node_2298,prsc:2,uv:0,uaff:False;proporder:2376-2713-9805-2356-7443-8034-955;pass:END;sub:END;*/

Shader "Shader Forge/Paint" {
    Properties {
        _Brush ("Brush", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _x ("x", Range(0, 1)) = 0
        _y ("y", Range(0, 1)) = 0
        _BrushSize ("BrushSize", Range(1, 10)) = 1
        [MaterialToggle] _Painting ("Painting", Float ) = -0.5
        _TargetImage ("TargetImage", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Brush; uniform float4 _Brush_ST;
            uniform sampler2D _TargetImage; uniform float4 _TargetImage_ST;
            uniform float _x;
            uniform float _y;
            uniform float _BrushSize;
            uniform fixed _Painting;
            float GetX( float2 XY ){
            return XY.x;
            }
            
            float GetY( float2 XY ){
            return XY.y;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _TargetImage_var = tex2D(_TargetImage,TRANSFORM_TEX(i.uv0, _TargetImage));
                float node_5726 = 0.0;
                float node_587_if_leA = step(_TargetImage_var.a,node_5726);
                float node_587_if_leB = step(node_5726,_TargetImage_var.a);
                float node_7134 = (11.0-_BrushSize);
                float node_7220 = 0.5;
                float2 _Painting_var = lerp( float2(-0.5,-0.5), float2(_x,_y), _Painting );
                float node_5661 = (node_7134*(-1.0));
                float2 node_6786 = ((i.uv0*node_7134)+float2((node_7220+(GetX( _Painting_var )*node_5661)),(node_7220+(GetY( _Painting_var )*node_5661))));
                float4 _Brush_var = tex2D(_Brush,TRANSFORM_TEX(node_6786, _Brush));
                float4 node_8453_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_8453_p = lerp(float4(float4(_Brush_var.rgb,0.0).zy, node_8453_k.wz), float4(float4(_Brush_var.rgb,0.0).yz, node_8453_k.xy), step(float4(_Brush_var.rgb,0.0).z, float4(_Brush_var.rgb,0.0).y));
                float4 node_8453_q = lerp(float4(node_8453_p.xyw, float4(_Brush_var.rgb,0.0).x), float4(float4(_Brush_var.rgb,0.0).x, node_8453_p.yzx), step(node_8453_p.x, float4(_Brush_var.rgb,0.0).x));
                float node_8453_d = node_8453_q.x - min(node_8453_q.w, node_8453_q.y);
                float node_8453_e = 1.0e-10;
                float3 node_8453 = float3(abs(node_8453_q.z + (node_8453_q.w - node_8453_q.y) / (6.0 * node_8453_d + node_8453_e)), node_8453_d / (node_8453_q.x + node_8453_e), node_8453_q.x);;
                float node_3740_if_leA = step(node_8453.b,0.5);
                float node_3740_if_leB = step(0.5,node_8453.b);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_3740 = lerp((node_3740_if_leA*node_5726)+(node_3740_if_leB*_MainTex_var.a),node_5726,node_3740_if_leA*node_3740_if_leB);
                float node_587 = lerp((node_587_if_leA*node_3740)+(node_587_if_leB*_MainTex_var.a),node_3740,node_587_if_leA*node_587_if_leB);
                clip(node_587 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _MainTex_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,node_587);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Brush; uniform float4 _Brush_ST;
            uniform sampler2D _TargetImage; uniform float4 _TargetImage_ST;
            uniform float _x;
            uniform float _y;
            uniform float _BrushSize;
            uniform fixed _Painting;
            float GetX( float2 XY ){
            return XY.x;
            }
            
            float GetY( float2 XY ){
            return XY.y;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _TargetImage_var = tex2D(_TargetImage,TRANSFORM_TEX(i.uv0, _TargetImage));
                float node_5726 = 0.0;
                float node_587_if_leA = step(_TargetImage_var.a,node_5726);
                float node_587_if_leB = step(node_5726,_TargetImage_var.a);
                float node_7134 = (11.0-_BrushSize);
                float node_7220 = 0.5;
                float2 _Painting_var = lerp( float2(-0.5,-0.5), float2(_x,_y), _Painting );
                float node_5661 = (node_7134*(-1.0));
                float2 node_6786 = ((i.uv0*node_7134)+float2((node_7220+(GetX( _Painting_var )*node_5661)),(node_7220+(GetY( _Painting_var )*node_5661))));
                float4 _Brush_var = tex2D(_Brush,TRANSFORM_TEX(node_6786, _Brush));
                float4 node_8453_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_8453_p = lerp(float4(float4(_Brush_var.rgb,0.0).zy, node_8453_k.wz), float4(float4(_Brush_var.rgb,0.0).yz, node_8453_k.xy), step(float4(_Brush_var.rgb,0.0).z, float4(_Brush_var.rgb,0.0).y));
                float4 node_8453_q = lerp(float4(node_8453_p.xyw, float4(_Brush_var.rgb,0.0).x), float4(float4(_Brush_var.rgb,0.0).x, node_8453_p.yzx), step(node_8453_p.x, float4(_Brush_var.rgb,0.0).x));
                float node_8453_d = node_8453_q.x - min(node_8453_q.w, node_8453_q.y);
                float node_8453_e = 1.0e-10;
                float3 node_8453 = float3(abs(node_8453_q.z + (node_8453_q.w - node_8453_q.y) / (6.0 * node_8453_d + node_8453_e)), node_8453_d / (node_8453_q.x + node_8453_e), node_8453_q.x);;
                float node_3740_if_leA = step(node_8453.b,0.5);
                float node_3740_if_leB = step(0.5,node_8453.b);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_3740 = lerp((node_3740_if_leA*node_5726)+(node_3740_if_leB*_MainTex_var.a),node_5726,node_3740_if_leA*node_3740_if_leB);
                float node_587 = lerp((node_587_if_leA*node_3740)+(node_587_if_leB*_MainTex_var.a),node_3740,node_587_if_leA*node_587_if_leB);
                clip(node_587 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
